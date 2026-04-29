package org.aktin.dwh.bloomfilter;

import java.util.Base64;

/**
 * Bloom filter implementation
 * <p>
 * Uses a BitSet to store bits and a RandomHashingStrategy to determine
 * which bits to set for a given value.
 */
public class BloomFilter {

	private final BitSet vector;
	private final int filterLength;
	private final RandomHashingStrategy strategy;

	/**
	 * Create an empty Bloom filter with the given length and strategy.
	 *
	 * @param filterLength the number of bits
	 * @param strategy     the hashing strategy (may be null for filters created by fold/balance)
	 */
	public BloomFilter(int filterLength, RandomHashingStrategy strategy) {
		if (filterLength < 1) {
			throw new IllegalArgumentException("filterLength must be a positive integer.");
		}
		this.filterLength = filterLength;
		this.vector = new BitSet(filterLength);
		this.strategy = strategy;
	}

	/**
	 * Create a Bloom filter from an existing BitSet.
	 *
	 * @param bitSet   existing BitSet
	 * @param strategy the hashing strategy (may be null)
	 */
	public BloomFilter(BitSet bitSet, RandomHashingStrategy strategy) {
		this.filterLength = bitSet.getSize();
		this.vector = bitSet;
		this.strategy = strategy;
	}

	/**
	 * Add a value to the filter for the given attribute.
	 * ORs the strategy's bit vector into this filter.
	 *
	 * @param value     the value to add (null becomes "")
	 * @param attribute the attribute name
	 */
	public void add(String value, String attribute) {
		if (strategy == null) {
			throw new IllegalStateException("Cannot add elements. No strategy configured.");
		}
		BitSet bitsToAdd = strategy.getBitVector(value, attribute);
		int[] thisWords = vector.getWords();
		int[] addWords = bitsToAdd.getWords();
		for (int i = 0; i < thisWords.length; i++) {
			thisWords[i] |= addWords[i];
		}
	}

	/**
	 * Check if a value is a member of this filter for the given attribute.
	 *
	 * @param value     the value to check
	 * @param attribute the attribute name
	 * @return true if all required bits are set
	 */
	public boolean isMember(String value, String attribute) {
		if (strategy == null) {
			return false;
		}
		BitSet searchedBits = strategy.getBitVector(value, attribute);
		for (int i = 0; i < filterLength; i++) {
			if (searchedBits.get(i) && !vector.get(i)) {
				return false;
			}
		}
		return true;
	}

	/**
	 * @return the filter length in bits
	 */
	public int length() {
		return filterLength;
	}

	/**
	 * @return the underlying BitSet
	 */
	public BitSet getBitSet() {
		return vector;
	}

	/**
	 * Returns a folded Bloom filter by XORing segments.
	 *
	 * @param numberOfFolds number of folds (1 fold = 2 parts, etc.)
	 * @return new folded BloomFilter with null strategy
	 */
	public BloomFilter fold(int numberOfFolds) {
		int numberOfParts = numberOfFolds + 1;
		if (numberOfFolds < 0) {
			throw new IllegalArgumentException("numberOfFolds must be non-negative.");
		}
		if (filterLength % numberOfParts != 0) {
			throw new IllegalArgumentException(
					"filterLength (" + filterLength + ") is not divisible by numberOfParts (" + numberOfParts + ").");
		}

		int segmentLength = filterLength / numberOfParts;
		BitSet[] segments = new BitSet[numberOfParts];

		for (int partIndex = 0; partIndex < numberOfParts; partIndex++) {
			segments[partIndex] = new BitSet(segmentLength);
			int startBit = partIndex * segmentLength;
			for (int j = 0; j < segmentLength; j++) {
				if (vector.get(startBit + j)) {
					segments[partIndex].set(j);
				}
			}
		}

		BitSet result = segments[0];
		for (int k = 1; k < numberOfParts; k++) {
			int[] resultWords = result.getWords();
			int[] segWords = segments[k].getWords();
			for (int w = 0; w < resultWords.length; w++) {
				resultWords[w] ^= segWords[w];
			}
		}

		return new BloomFilter(result, null);
	}

	/**
	 * Returns a balanced Bloom filter (2x length, original + inverted, shuffled).
	 *
	 * @param seed seed for the shuffle PRNG
	 * @return new balanced BloomFilter with null strategy
	 */
	public BloomFilter getBalancedBloomFilter(Object seed) {
		int newLength = filterLength * 2;
		BitSet balancedVector = new BitSet(newLength);

		// Copy original bits to first half
		for (int i = 0; i < filterLength; i++) {
			balancedVector.set(i, vector.get(i));
		}

		// Copy inverted bits to second half
		for (int i = 0; i < filterLength; i++) {
			balancedVector.set(i + filterLength, !vector.get(i));
		}

		// Shuffle using SecureRandom
		SecureRandom secureRng = new SecureRandom(seed);
		for (int i = 0; i < newLength; i++) {
			int idx = secureRng.nextInt(newLength);
			// Swap bits at i and idx
			boolean tmp = balancedVector.get(idx);
			balancedVector.set(idx, balancedVector.get(i));
			balancedVector.set(i, tmp);
		}

		return new BloomFilter(balancedVector, null);
	}

	/**
	 * Returns the Bloom filter as a Base64 encoded string.
	 * Uses MSB-first bit packing.
	 *
	 * @return Base64 encoded string
	 */
	public String getAsEncodedString() {
		byte[] byteArray = vector.toByteArray();
		return Base64.getEncoder().encodeToString(byteArray);
	}

	@Override
	public String toString() {
		return vector.toString();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) return true;
		if (obj == null || !(obj instanceof BloomFilter)) return false;
		BloomFilter other = (BloomFilter) obj;
		if (filterLength != other.filterLength) return false;
		int[] thisWords = vector.getWords();
		int[] otherWords = other.vector.getWords();
		if (thisWords.length != otherWords.length) return false;
		for (int i = 0; i < thisWords.length; i++) {
			if (thisWords[i] != otherWords[i]) return false;
		}
		return true;
	}

	@Override
	public int hashCode() {
		int result = filterLength;
		for (int word : vector.getWords()) {
			result = 31 * result + word;
		}
		return result;
	}
}
