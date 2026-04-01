package org.aktin.dwh.bloomfilter;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Random Hashing strategy for Bloom filter generation.
 * <p>
 * Generates a lookup table mapping each possible n-gram to a list of random
 * bit positions, seeded per attribute.
 */
public class RandomHashingStrategy {

	private final int length;
	private final int numBitPositions;
	private final int nGramLength;
	private final String alphabet;
	// attributeName -> (ngram -> [positions])
	private final Map<String, Map<String, int[]>> lookUpTable;

	private RandomHashingStrategy(int length, int numBitPositions, int nGramLength,
			String alphabet, Map<String, Map<String, int[]>> lookUpTable) {
		this.length = length;
		this.numBitPositions = numBitPositions;
		this.nGramLength = nGramLength;
		this.alphabet = alphabet;
		this.lookUpTable = lookUpTable;
	}

	/**
	 * Factory method to create and initialize a RandomHashingStrategy.
	 *
	 * @param length           filter bit length
	 * @param numBitPositions  number of bits to set per n-gram
	 * @param nGramLength      length of n-grams
	 * @param alphabet         all possible characters for n-grams
	 * @param attributesAndSeeds map of attribute name to seed
	 * @return initialized strategy
	 */
	public static RandomHashingStrategy create(int length, int numBitPositions, int nGramLength,
			String alphabet, Map<String, Object> attributesAndSeeds) {
		if (length < 1) {
			throw new IllegalArgumentException("Length must be a positive integer.");
		}
		if (numBitPositions < 1) {
			throw new IllegalArgumentException("Number of bit positions must be a positive integer.");
		}
		if (nGramLength < 1) {
			throw new IllegalArgumentException("N-gram length must be a positive integer.");
		}
		if (alphabet == null || alphabet.isEmpty()) {
			throw new IllegalArgumentException("Alphabet cannot be null or empty.");
		}
		if (attributesAndSeeds == null || attributesAndSeeds.isEmpty()) {
			throw new IllegalArgumentException("Attributes and seeds must be a non-empty map.");
		}

		Map<String, Map<String, int[]>> lookUpTable = new TreeMap<>();

		for (Map.Entry<String, Object> entry : attributesAndSeeds.entrySet()) {
			String attributeName = entry.getKey();
			Object seed = entry.getValue();

			// Generate all possible n-gram permutations - use TreeMap for sorted order
			TreeMap<String, int[]> attributeNgramMap = new TreeMap<>();
			permute(nGramLength, "", alphabet, attributeNgramMap);

			// Initialize PRNG with the attribute-specific seed
			SecureRandom secureRng = new SecureRandom(seed);

			// Process n-grams in sorted order (TreeMap guarantees this)
			for (Map.Entry<String, int[]> ngramEntry : attributeNgramMap.entrySet()) {
				int[] positions = new int[numBitPositions];
				for (int j = 0; j < numBitPositions; j++) {
					positions[j] = secureRng.nextInt(length);
				}
				ngramEntry.setValue(positions);
			}

			lookUpTable.put(attributeName, attributeNgramMap);
		}

		return new RandomHashingStrategy(length, numBitPositions, nGramLength, alphabet, lookUpTable);
	}

	/**
	 * Returns a BitSet representing the Bloom filter for the given value and attribute.
	 *
	 * @param value     the value to encode (null/empty becomes "")
	 * @param attribute the attribute name
	 * @return BitSet with bits set according to the hashing strategy
	 */
	public BitSet getBitVector(String value, String attribute) {
		if (attribute == null || !lookUpTable.containsKey(attribute)) {
			throw new IllegalArgumentException(
					"Attribute '" + attribute + "' is null or unknown. Available: " + lookUpTable.keySet());
		}

		String stringValue = (value == null) ? "" : value;
		BitSet vector = new BitSet(length);
		Map<String, int[]> attributeNgramMap = lookUpTable.get(attribute);
		List<String> ngrams = getNGrams(stringValue, nGramLength);

		for (String ngram : ngrams) {
			int[] positions = attributeNgramMap.get(ngram);
			if (positions == null) {
				throw new IllegalArgumentException(
						"N-gram \"" + ngram + "\" not found in lookup table for attribute \"" + attribute
								+ "\". It might contain characters outside the defined alphabet.");
			}
			for (int pos : positions) {
				vector.set(pos);
			}
		}

		return vector;
	}

	public int getLength() {
		return length;
	}

	public int getNumBitPositions() {
		return numBitPositions;
	}

	public int getNGramLength() {
		return nGramLength;
	}

	public String getAlphabet() {
		return alphabet;
	}

	/**
	 * Recursively generate all permutations with repetition of length n from alphabet.
	 */
	private static void permute(int level, String prefix, String alphabet, Map<String, int[]> result) {
		if (level <= 0) {
			result.put(prefix, new int[0]);
			return;
		}
		for (int i = 0; i < alphabet.length(); i++) {
			permute(level - 1, prefix + alphabet.charAt(i), alphabet, result);
		}
	}

	/**
	 * Extract all overlapping n-grams of length n from text.
	 */
	private static List<String> getNGrams(String text, int n) {
		List<String> ngrams = new ArrayList<>();
		if (text == null || text.isEmpty() || n <= 0 || text.length() < n) {
			return ngrams;
		}
		for (int i = 0; i <= text.length() - n; i++) {
			ngrams.add(text.substring(i, i + n));
		}
		return ngrams;
	}
}
