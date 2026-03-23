package org.aktin.dwh.bloomfilter;

import static org.junit.Assert.*;
import org.junit.Test;

public class TextNormalizerTest {

	@Test
	public void testGermanUmlauts() {
		assertEquals("mueller", TextNormalizer.normalizeForPPRL("Müller"));
		assertEquals("boehm", TextNormalizer.normalizeForPPRL("Böhm"));
		assertEquals("groesse", TextNormalizer.normalizeForPPRL("Größe"));
		assertEquals("ueber", TextNormalizer.normalizeForPPRL("Über"));
	}

	@Test
	public void testNordic() {
		assertEquals("soren", TextNormalizer.normalizeForPPRL("Søren"));
		assertEquals("bjoerk", TextNormalizer.normalizeForPPRL("Björk"));
		assertEquals("aero", TextNormalizer.normalizeForPPRL("Ærø"));
	}

	@Test
	public void testPolish() {
		assertEquals("lukasz", TextNormalizer.normalizeForPPRL("Łukasz"));
		assertEquals("slawomir", TextNormalizer.normalizeForPPRL("Sławomir"));
	}

	@Test
	public void testDiacriticsViaNFD() {
		assertEquals("rene", TextNormalizer.normalizeForPPRL("René"));
		assertEquals("jose garcia", TextNormalizer.normalizeForPPRL("José García"));
		assertEquals("cafe", TextNormalizer.normalizeForPPRL("café"));
		assertEquals("naive", TextNormalizer.normalizeForPPRL("naïve"));
	}

	@Test
	public void testWhitespace() {
		assertEquals("alice bob", TextNormalizer.normalizeForPPRL("  Alice   Bob  "));
		assertEquals("hello", TextNormalizer.normalizeForPPRL("  Hello  "));
	}

	@Test
	public void testFallbackChar() {
		// Characters outside allowed set should become ¬
		String result = TextNormalizer.normalizeForPPRL("abc\u4E2Ddef");
		assertEquals("abc\u00ACdef", result);
	}

	@Test
	public void testCombined() {
		assertEquals("aerztliche ueberpruefung",
				TextNormalizer.normalizeForPPRL("Ärztliche Überprüfung"));
	}

	@Test
	public void testNullAndEmpty() {
		assertEquals("", TextNormalizer.normalizeForPPRL(null));
		assertEquals("", TextNormalizer.normalizeForPPRL(""));
	}

	@Test
	public void testAllowedSpecialChars() {
		// These characters should pass through after lowercasing
		assertEquals("a.b,c-d_e", TextNormalizer.normalizeForPPRL("a.b,c-d_e"));
		assertEquals("x@y#z", TextNormalizer.normalizeForPPRL("x@y#z"));
	}

	@Test
	public void testIcelandic() {
		assertEquals("thorsten", TextNormalizer.normalizeForPPRL("Þorsten"));
		assertEquals("dor", TextNormalizer.normalizeForPPRL("Ðor"));
	}

	@Test
	public void testTurkish() {
		assertEquals("guel", TextNormalizer.normalizeForPPRL("Gül"));
		assertEquals("istanbul", TextNormalizer.normalizeForPPRL("İstanbul"));
	}

	@Test
	public void testCroatian() {
		assertEquals("durdevac", TextNormalizer.normalizeForPPRL("Đurđevac"));
		assertEquals("cakovec", TextNormalizer.normalizeForPPRL("Čakovec"));
	}

	@Test
	public void testEszett() {
		assertEquals("strasse", TextNormalizer.normalizeForPPRL("Straße"));
	}

	@Test
	public void testTransliterateBeforeNFD() {
		// ä should be transliterated to "ae" first, not stripped via NFD to "a"
		assertEquals("ae", TextNormalizer.normalizeForPPRL("ä"));
		assertEquals("oe", TextNormalizer.normalizeForPPRL("ö"));
		assertEquals("ue", TextNormalizer.normalizeForPPRL("ü"));
	}
}
