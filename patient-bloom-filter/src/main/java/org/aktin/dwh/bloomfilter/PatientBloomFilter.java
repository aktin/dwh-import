package org.aktin.dwh.bloomfilter;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.w3c.dom.Document;

/**
 * High-level API for Bloom filter generation from CDA documents.
 * <p>
 * Combines configuration loading, CDA IDAT extraction, text normalization,
 * and Bloom filter generation into a single entry point.
 * <p>
 * Usage:
 * <pre>
 * BloomFilterConfig config = BloomFilterConfig.load(prefs.keySet(), prefs::get);
 * PatientBloomFilter generator = new PatientBloomFilter(config);
 * Map&lt;String, String&gt; filters = generator.generateFromCda(cdaDocument);
 * // filters: {"vorname" -&gt; "base64...", "nachname" -&gt; "base64...", ...}
 * </pre>
 */
public class PatientBloomFilter {

	private static final Logger log = Logger.getLogger(PatientBloomFilter.class.getName());

	private final BloomFilterConfig config;
	private final RandomHashingStrategy strategy;
	private final CdaIdatExtractor extractor;

	/**
	 * Create a generator with the given configuration.
	 * Initializes the hashing strategy (lookup table generation) eagerly.
	 *
	 * @param config the Bloom filter configuration
	 */
	public PatientBloomFilter(BloomFilterConfig config) {
		this.config = config;
		this.extractor = new CdaIdatExtractor(config.getFieldXPaths());
		this.strategy = RandomHashingStrategy.create(
				config.getFilterLength(),
				config.getNumBitPositions(),
				config.getNGramLength(),
				config.getAlphabet(),
				config.getFieldSeeds()
		);
		log.info("PatientBloomFilter initialized: " + config.getFieldCount() + " fields, "
				+ "length=" + config.getFilterLength() + ", bits=" + config.getNumBitPositions()
				+ ", ngram=" + config.getNGramLength());
	}

	/**
	 * Generate Bloom filters from a CDA document.
	 * Extracts IDAT fields, normalizes text, and generates one Bloom filter per field.
	 *
	 * @param cdaDocument the CDA DOM document
	 * @return map of field name to Base64-encoded Bloom filter string (skips fields with null values)
	 */
	public Map<String, String> generateFromCda(Document cdaDocument) {
		Map<String, String> idatValues = extractor.extractIdat(cdaDocument);
		return generateFromValues(idatValues);
	}

	/**
	 * Generate Bloom filters from pre-extracted IDAT values.
	 *
	 * @param idatValues map of field name to raw value (null values are skipped)
	 * @return map of field name to Base64-encoded Bloom filter string
	 */
	public Map<String, String> generateFromValues(Map<String, String> idatValues) {
		Map<String, String> result = new HashMap<>();

		for (Map.Entry<String, String> entry : idatValues.entrySet()) {
			String fieldName = entry.getKey();
			String rawValue = entry.getValue();

			if (rawValue == null) {
				log.fine("Skipping Bloom filter for field '" + fieldName + "': no value available");
				continue;
			}

			try {
				String normalized = TextNormalizer.normalizeForPPRL(rawValue);
				BloomFilter filter = new BloomFilter(config.getFilterLength(), strategy);
				filter.add(normalized, fieldName);

				String encoded;
				if (config.isBalanced()) {
					BloomFilter balanced = filter.getBalancedBloomFilter(config.getBalancedSeed());
					encoded = balanced.getAsEncodedString();
				} else {
					encoded = filter.getAsEncodedString();
				}

				result.put(fieldName, encoded);
				log.fine("Generated Bloom filter for field '" + fieldName + "': "
						+ rawValue + " -> " + normalized + " -> " + encoded.substring(0, Math.min(20, encoded.length())) + "...");
			} catch (Exception e) {
				log.log(Level.WARNING, "Failed to generate Bloom filter for field '" + fieldName + "'", e);
			}
		}

		return result;
	}
}
