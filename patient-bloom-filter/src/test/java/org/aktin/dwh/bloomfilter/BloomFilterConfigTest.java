package org.aktin.dwh.bloomfilter;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.Properties;

import org.junit.Test;

public class BloomFilterConfigTest {

	@Test
	public void loadForStudyUsesStudySpecificSettings() {
		Properties properties = new Properties();
		properties.setProperty("bloomfilter.AKTIN.enabled", "true");
		properties.setProperty("bloomfilter.AKTIN.length", "1500");
		properties.setProperty("bloomfilter.AKTIN.bits", "20");
		properties.setProperty("bloomfilter.AKTIN.ngram", "3");
		properties.setProperty("bloomfilter.AKTIN.alphabet", "0123456789");
		properties.setProperty("bloomfilter.AKTIN.balanced", "true");
		properties.setProperty("bloomfilter.AKTIN.balanced.seed", "study-seed");
		properties.setProperty("bloomfilter.AKTIN.field.vorname.xpath", "/cda:ClinicalDocument/cda:recordTarget");
		properties.setProperty("bloomfilter.AKTIN.field.vorname.seed", "field-seed");

		BloomFilterConfig config = BloomFilterConfig.loadForStudy("AKTIN", properties.stringPropertyNames(), properties::getProperty);

		assertEquals(1500, config.getFilterLength());
		assertEquals(20, config.getNumBitPositions());
		assertEquals(3, config.getNGramLength());
		assertEquals("0123456789", config.getAlphabet());
		assertTrue(config.isBalanced());
		assertEquals("study-seed", config.getBalancedSeed());
		assertEquals("/cda:ClinicalDocument/cda:recordTarget", config.getFieldXPaths().get("vorname"));
		assertEquals("field-seed", config.getFieldSeeds().get("vorname"));
	}

	@Test
	public void loadForStudyPrefersStudySpecificOverrides() {
		Properties properties = new Properties();
		properties.setProperty("bloomfilter.AKTIN.enabled", "true");
		properties.setProperty("bloomfilter.AKTIN.length", "1500");
		properties.setProperty("bloomfilter.AKTIN.bits", "20");
		properties.setProperty("bloomfilter.AKTIN.ngram", "3");
		properties.setProperty("bloomfilter.AKTIN.alphabet", "study");
		properties.setProperty("bloomfilter.AKTIN.balanced", "true");
		properties.setProperty("bloomfilter.AKTIN.balanced.seed", "study-seed");

		BloomFilterConfig config = BloomFilterConfig.loadForStudy("AKTIN", properties.stringPropertyNames(), properties::getProperty);

		assertEquals("study", config.getAlphabet());
		assertTrue(config.isBalanced());
	}

	@Test
	public void loadWithoutStudyKeepsGlobalLookupOnly() {
		Properties properties = new Properties();
		properties.setProperty("bloomfilter.length", "1234");
		properties.setProperty("bloomfilter.AKTIN.length", "4321");

		BloomFilterConfig config = BloomFilterConfig.load(properties.stringPropertyNames(), properties::getProperty);

		assertEquals(1234, config.getFilterLength());
		assertFalse(config.isBalanced());
	}

	@Test
	public void loadForEnabledStudyRequiresConfiguredCoreSettings() {
		Properties properties = new Properties();
		properties.setProperty("bloomfilter.AKTIN.enabled", "true");
		properties.setProperty("bloomfilter.length", "1500");
		properties.setProperty("bloomfilter.bits", "20");
		properties.setProperty("bloomfilter.ngram", "3");
		properties.setProperty("bloomfilter.alphabet", "global");

		try {
			BloomFilterConfig.loadForStudy("AKTIN", properties.stringPropertyNames(), properties::getProperty);
			fail("Expected missing required setting to raise an exception");
		} catch (IllegalArgumentException e) {
			assertEquals("Missing required Bloom filter setting: bloomfilter.AKTIN.length", e.getMessage());
		}
	}

	@Test
	public void loadForDisabledStudyAllowsMissingSettings() {
		Properties properties = new Properties();
		properties.setProperty("bloomfilter.AKTIN.enabled", "false");

		BloomFilterConfig config = BloomFilterConfig.loadForStudy("AKTIN", properties.stringPropertyNames(), properties::getProperty);

		assertFalse(config.isBalanced());
		assertEquals(0, config.getFieldCount());
	}
}
