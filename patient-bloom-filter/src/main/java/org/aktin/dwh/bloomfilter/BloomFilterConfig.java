package org.aktin.dwh.bloomfilter;

import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/**
 * Configuration POJO for Bloom filter generation.
 * Loads field definitions and parameters from aktin.properties via the Preferences interface.
 *
 * <p>Expected properties format (per-study):
 * <pre>
 * bloomfilter.CERT.enabled=true
 * bloomfilter.CERT.length=1000
 * bloomfilter.CERT.bits=15
 * bloomfilter.CERT.ngram=2
 * bloomfilter.CERT.field.vorname.xpath=/cda:ClinicalDocument/.../cda:given
 * bloomfilter.CERT.field.vorname.seed=cert_seed_1
 * bloomfilter.CERT.field.nachname.xpath=/cda:ClinicalDocument/.../cda:family
 * bloomfilter.CERT.field.nachname.seed=cert_seed_2
 * </pre>
 */
public class BloomFilterConfig {

	private static final String PREFIX = "bloomfilter.";

	private Integer filterLength;
	private Integer numBitPositions;
	private Integer nGramLength;
	private String alphabet;
	private boolean balanced = false;
	private String balancedSeed;

	/** field name -> xpath expression */
	private final Map<String, String> fieldXPaths = new LinkedHashMap<>();
	/** field name -> seed */
	private final Map<String, Object> fieldSeeds = new LinkedHashMap<>();

	/**
	 * Load configuration from a preferences-like key/value source using the global prefix {@code bloomfilter.}.
	 *
	 * @param keySet all available keys
	 * @param getter function to get a value by key
	 * @return loaded config
	 */
	public static BloomFilterConfig load(Set<String> keySet, Function<String, String> getter) {
		return loadWithPrefix(PREFIX, keySet, getter);
	}

	/**
	 * Load configuration for a specific study.
	 * Uses the prefix {@code bloomfilter.<studyId>.} to scope all properties.
	 * If the study is enabled, all required settings must be configured within
	 * that study-specific namespace.
	 *
	 * @param studyId the study identifier (e.g. "CERT", "ENQUIRE")
	 * @param keySet all available keys
	 * @param getter function to get a value by key
	 * @return loaded config for the given study
	 */
	public static BloomFilterConfig loadForStudy(String studyId, Set<String> keySet, Function<String, String> getter) {
		String prefix = PREFIX + studyId + ".";
		BloomFilterConfig config = loadWithPrefix(prefix, keySet, getter);
		if (isEnabled(prefix, getter)) {
			config.validateRequired(prefix);
		}
		return config;
	}

	/**
	 * Discover all study IDs that have Bloom filter configuration enabled.
	 * Scans for keys matching {@code bloomfilter.<studyId>.enabled} where the value is {@code "true"}.
	 *
	 * @param keySet all available keys
	 * @param getter function to get a value by key
	 * @return set of study IDs with enabled BF config
	 */
	public static Set<String> discoverStudyIds(Set<String> keySet, Function<String, String> getter) {
		Set<String> studyIds = new HashSet<>();
		for (String key : keySet) {
			if (key.startsWith(PREFIX) && key.endsWith(".enabled")) {
				// bloomfilter.<studyId>.enabled -> extract studyId
				String middle = key.substring(PREFIX.length(), key.length() - ".enabled".length());
				// studyId must not be empty and must not contain dots (no nested prefix)
				if (!middle.isEmpty() && !middle.contains(".")) {
					String val = getter.apply(key);
					if ("true".equalsIgnoreCase(val != null ? val.trim() : null)) {
						studyIds.add(middle);
					}
				}
			}
		}
		return studyIds;
	}

	private static BloomFilterConfig loadWithPrefix(String prefix, Set<String> keySet, Function<String, String> getter) {
		BloomFilterConfig config = new BloomFilterConfig();

		String val;

		val = getter.apply(prefix + "length");
		if (val != null && !val.isEmpty()) {
			config.filterLength = Integer.parseInt(val.trim());
		}

		val = getter.apply(prefix + "bits");
		if (val != null && !val.isEmpty()) {
			config.numBitPositions = Integer.parseInt(val.trim());
		}

		val = getter.apply(prefix + "ngram");
		if (val != null && !val.isEmpty()) {
			config.nGramLength = Integer.parseInt(val.trim());
		}

		val = getter.apply(prefix + "alphabet");
		if (val != null && !val.isEmpty()) {
			config.alphabet = val;
		}

		val = getter.apply(prefix + "balanced");
		if (val != null) {
			config.balanced = "true".equalsIgnoreCase(val.trim());
		}

		val = getter.apply(prefix + "balanced.seed");
		if (val != null) {
			config.balancedSeed = val;
		}

		// Discover field definitions: <prefix>field.<name>.xpath and .seed
		String fieldPrefix = prefix + "field.";
		for (String key : keySet) {
			if (key.startsWith(fieldPrefix) && key.endsWith(".xpath")) {
				// Extract field name: <prefix>field.<name>.xpath -> <name>
				String fieldName = key.substring(fieldPrefix.length(), key.length() - ".xpath".length());
				String xpath = getter.apply(key);
				String seed = getter.apply(fieldPrefix + fieldName + ".seed");
				if (xpath != null && !xpath.isEmpty()) {
					config.fieldXPaths.put(fieldName, xpath);
					config.fieldSeeds.put(fieldName, seed != null ? seed : "");
				}
			}
		}

		return config;
	}
	private static boolean isEnabled(String prefix, Function<String, String> getter) {
		String enabled = getter.apply(prefix + "enabled");
		return enabled != null && "true".equalsIgnoreCase(enabled.trim());
	}

	private void validateRequired(String prefix) {
		requireConfigured(filterLength, prefix + "length");
		requireConfigured(numBitPositions, prefix + "bits");
		requireConfigured(nGramLength, prefix + "ngram");
		requireConfigured(alphabet, prefix + "alphabet");
		if (balanced) {
			requireConfigured(balancedSeed, prefix + "balanced.seed");
		}
	}

	private static void requireConfigured(Object value, String key) {
		if (value == null) {
			throw new IllegalArgumentException("Missing required Bloom filter setting: " + key);
		}
		if (value instanceof String && ((String) value).isEmpty()) {
			throw new IllegalArgumentException("Missing required Bloom filter setting: " + key);
		}
	}

	public int getFilterLength() {
		return requireNumber(filterLength, "filterLength");
	}

	public int getNumBitPositions() {
		return requireNumber(numBitPositions, "numBitPositions");
	}

	public int getNGramLength() {
		return requireNumber(nGramLength, "nGramLength");
	}

	public String getAlphabet() {
		return requireString(alphabet, "alphabet");
	}

	public boolean isBalanced() {
		return balanced;
	}

	public String getBalancedSeed() {
		return balancedSeed;
	}

	/**
	 * @return unmodifiable map of field name to XPath expression
	 */
	public Map<String, String> getFieldXPaths() {
		return Collections.unmodifiableMap(fieldXPaths);
	}

	/**
	 * @return unmodifiable map of field name to seed
	 */
	public Map<String, Object> getFieldSeeds() {
		return Collections.unmodifiableMap(fieldSeeds);
	}

	/**
	 * @return number of configured IDAT fields
	 */
	public int getFieldCount() {
		return fieldXPaths.size();
	}

	private static int requireNumber(Integer value, String name) {
		if (value == null) {
			throw new IllegalStateException("Bloom filter setting not initialized: " + name);
		}
		return value.intValue();
	}

	private static String requireString(String value, String name) {
		if (value == null) {
			throw new IllegalStateException("Bloom filter setting not initialized: " + name);
		}
		return value;
	}
}
