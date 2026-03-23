package org.aktin.dwh.bloomfilter;

import static org.junit.Assert.*;

import java.util.LinkedHashMap;
import java.util.Map;

import org.junit.Test;

/**
 * Cross-platform compatibility tests.
 * Test vectors verify byte-identical output for the same inputs.
 */
public class CrossPlatformCompatibilityTest {

	@Test
	public void testSecureRandomDeterminism_testSeed_bound1000() {
		int[] expected = {105,249,200,49,568,154,402,3,701,343,646,492,771,31,367,679,472,868,11,315};
		SecureRandom rng = new SecureRandom("testSeed");
		for (int i = 0; i < expected.length; i++) {
			assertEquals("Mismatch at index " + i, expected[i], rng.nextInt(1000));
		}
	}

	@Test
	public void testSecureRandomDeterminism_numericSeed42_bound500() {
		int[] expected = {169,185,249,330,337,441,465,322,105,233,64,259,316,403,38,418,236,248,168,132};
		SecureRandom rng = new SecureRandom(42);
		for (int i = 0; i < expected.length; i++) {
			assertEquals("Mismatch at index " + i, expected[i], rng.nextInt(500));
		}
	}

	@Test
	public void testSimpleBloomFilter() {
		// Test 1: alphabet="abc", seed="seed123", length=20, bits=3, ngram=2
		// Input: "abc", attribute: "attr1"
		// Expected Base64: "CQhQ" / BitString: "00001001000010000101"
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("attr1", "seed123");
		RandomHashingStrategy strategy = RandomHashingStrategy.create(20, 3, 2, "abc", seeds);
		BloomFilter filter = new BloomFilter(20, strategy);
		filter.add("abc", "attr1");

		assertEquals("00001001000010000101", filter.toString());
		assertEquals("CQhQ", filter.getAsEncodedString());
	}

	@Test
	public void testRealWorldVorname_Mueller() {
		// Test 2a: Full alphabet, length=1000, bits=15, ngram=2
		// Input: "Müller" (normalized: "mueller"), attribute: "vorname", seed: "vn_seed_42"
		String alphabet = "abcdefghijklmnopqrstuvwxyz0123456789 .,-_|#@()[]{}:;!?+*/%=<>'\u00ac";
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("vorname", "vn_seed_42");
		seeds.put("nachname", "nn_seed_99");

		RandomHashingStrategy strategy = RandomHashingStrategy.create(1000, 15, 2, alphabet, seeds);

		BloomFilter filter = new BloomFilter(1000, strategy);
		String normalized = TextNormalizer.normalizeForPPRL("Müller");
		assertEquals("mueller", normalized);
		filter.add(normalized, "vorname");

		String expected = "CAIAAAgIgqQAgCBAIIAAAAAEACAAAAAQCBQAAAQAAAIAAgAACEAAADUAQASAhIAAARAAQCEAEAAAAICRCAEAgBAAAAAACAQAQGCAAJERAJAQBQGAAAAgAQIQIAAAAAAAAAEAQAAAAAAAQAIgCBAIAAAIBBAAABAAAAQIQAA=";
		assertEquals(expected, filter.getAsEncodedString());
	}

	@Test
	public void testRealWorldNachname_Timo() {
		// Test 2b: Full alphabet, length=1000, bits=15, ngram=2
		// Input: "Timo" (normalized: "timo"), attribute: "nachname", seed: "nn_seed_99"
		String alphabet = "abcdefghijklmnopqrstuvwxyz0123456789 .,-_|#@()[]{}:;!?+*/%=<>'\u00ac";
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("vorname", "vn_seed_42");
		seeds.put("nachname", "nn_seed_99");

		RandomHashingStrategy strategy = RandomHashingStrategy.create(1000, 15, 2, alphabet, seeds);

		BloomFilter filter = new BloomFilter(1000, strategy);
		String normalized = TextNormalizer.normalizeForPPRL("Timo");
		assertEquals("timo", normalized);
		filter.add(normalized, "nachname");

		String expected = "AAACAAAgEAAAAAQgAAAAgEAEAAAAAgAACAAAAAIAAAIAAAIAAAEQRAABBQAAAAAAAAgEQAAAAAAAIAAAAAAEAAAAMAAAAAAAAAAABAAAIAAAAAAAAKCAAAAAAFAAAIAAAgAAAAABAAGAIgAAAAAAAAAAAAEAAAggACAAAAA=";
		assertEquals(expected, filter.getAsEncodedString());
	}

	@Test
	public void testEmptyString() {
		// Test 3: Empty string input should produce all-zero filter
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("field", "emptySeed");
		RandomHashingStrategy strategy = RandomHashingStrategy.create(20, 3, 2, "abc", seeds);
		BloomFilter filter = new BloomFilter(20, strategy);
		filter.add("", "field");

		assertEquals("00000000000000000000", filter.toString());
		assertEquals("AAAA", filter.getAsEncodedString());
	}

	@Test
	public void testSingleCharShorterThanNGram() {
		// Test 4: Single char "a" shorter than ngram=2, so no n-grams -> empty filter
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("field", "singleChar");
		RandomHashingStrategy strategy = RandomHashingStrategy.create(30, 3, 2, "abcdef", seeds);
		BloomFilter filter = new BloomFilter(30, strategy);
		filter.add("a", "field");

		assertEquals("000000000000000000000000000000", filter.toString());
		assertEquals("AAAAAA==", filter.getAsEncodedString());
	}

	@Test
	public void testBalancedBloomFilter() {
		// Test 5: Balanced bloom filter from test 1 with balanceSeed="balanceSeed"
		Map<String, Object> seeds = new LinkedHashMap<>();
		seeds.put("attr1", "seed123");
		RandomHashingStrategy strategy = RandomHashingStrategy.create(20, 3, 2, "abc", seeds);
		BloomFilter filter = new BloomFilter(20, strategy);
		filter.add("abc", "attr1");

		BloomFilter balanced = filter.getBalancedBloomFilter("balanceSeed");
		assertEquals("alvcNGg=", balanced.getAsEncodedString());
	}

	@Test
	public void testNormalizationMatchesTypeScript() {
		assertEquals("mueller", TextNormalizer.normalizeForPPRL("Müller"));
		assertEquals("boehm", TextNormalizer.normalizeForPPRL("Böhm"));
		assertEquals("groesse", TextNormalizer.normalizeForPPRL("Größe"));
		assertEquals("soren", TextNormalizer.normalizeForPPRL("Søren"));
		assertEquals("bjoerk", TextNormalizer.normalizeForPPRL("Björk"));
		assertEquals("lukasz", TextNormalizer.normalizeForPPRL("Łukasz"));
		assertEquals("rene", TextNormalizer.normalizeForPPRL("René"));
		assertEquals("jose garcia", TextNormalizer.normalizeForPPRL("José García"));
		assertEquals("alice bob", TextNormalizer.normalizeForPPRL("  Alice   Bob  "));
		assertEquals("strasse", TextNormalizer.normalizeForPPRL("Straße"));
		assertEquals("aerztliche ueberpruefung", TextNormalizer.normalizeForPPRL("Ärztliche Überprüfung"));
		assertEquals("thorsten", TextNormalizer.normalizeForPPRL("Þorsten"));
		assertEquals("", TextNormalizer.normalizeForPPRL(""));
		assertEquals("", TextNormalizer.normalizeForPPRL(null));
	}
}
