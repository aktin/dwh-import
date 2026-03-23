package org.aktin.dwh.bloomfilter;

import java.text.Normalizer;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Text normalization for PPRL.
 * <p>
 * Normalization pipeline:
 * <ol>
 *   <li>Transliterate special characters (ø→o, æ→ae, ä→ae, ö→oe, ü→ue, ß→ss, etc.)</li>
 *   <li>Remove diacritical marks via Unicode NFD decomposition</li>
 *   <li>Convert to lowercase</li>
 *   <li>Normalize whitespace (collapse, trim)</li>
 *   <li>Replace unmapped characters with fallback char (¬)</li>
 * </ol>
 */
public class TextNormalizer {

	/** Fallback character for unmapped chars (U+00AC NOT SIGN) */
	public static final char FALLBACK_CHAR = '\u00AC';

	private static final Map<Character, String> TRANSLITERATION_MAP = new LinkedHashMap<>();
	private static final Pattern DIACRITICS_PATTERN = Pattern.compile("[\\u0300-\\u036f]");
	private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
	private static final String ALLOWED_CHARS = "abcdefghijklmnopqrstuvwxyz0123456789 .,-_|#@()[]{}:;!?+*/%=<>'\u00AC";
	private static final boolean[] ALLOWED_LOOKUP = new boolean[256];

	static {
		// Nordic/Scandinavian
		TRANSLITERATION_MAP.put('\u00F8', "o");   // ø
		TRANSLITERATION_MAP.put('\u00D8', "O");   // Ø
		TRANSLITERATION_MAP.put('\u00E6', "ae");  // æ
		TRANSLITERATION_MAP.put('\u00C6', "AE");  // Æ
		TRANSLITERATION_MAP.put('\u00E5', "a");   // å
		TRANSLITERATION_MAP.put('\u00C5', "A");   // Å
		TRANSLITERATION_MAP.put('\u0153', "oe");  // œ
		TRANSLITERATION_MAP.put('\u0152', "OE");  // Œ

		// German
		TRANSLITERATION_MAP.put('\u00E4', "ae");  // ä
		TRANSLITERATION_MAP.put('\u00C4', "AE");  // Ä
		TRANSLITERATION_MAP.put('\u00F6', "oe");  // ö
		TRANSLITERATION_MAP.put('\u00D6', "OE");  // Ö
		TRANSLITERATION_MAP.put('\u00FC', "ue");  // ü
		TRANSLITERATION_MAP.put('\u00DC', "UE");  // Ü
		TRANSLITERATION_MAP.put('\u00DF', "ss");  // ß

		// Polish
		TRANSLITERATION_MAP.put('\u0142', "l");   // ł
		TRANSLITERATION_MAP.put('\u0141', "L");   // Ł
		TRANSLITERATION_MAP.put('\u0105', "a");   // ą
		TRANSLITERATION_MAP.put('\u0104', "A");   // Ą
		TRANSLITERATION_MAP.put('\u0119', "e");   // ę
		TRANSLITERATION_MAP.put('\u0118', "E");   // Ę
		TRANSLITERATION_MAP.put('\u015B', "s");   // ś
		TRANSLITERATION_MAP.put('\u015A', "S");   // Ś
		TRANSLITERATION_MAP.put('\u017A', "z");   // ź
		TRANSLITERATION_MAP.put('\u0179', "Z");   // Ź
		TRANSLITERATION_MAP.put('\u017C', "z");   // ż
		TRANSLITERATION_MAP.put('\u017B', "Z");   // Ż
		TRANSLITERATION_MAP.put('\u0107', "c");   // ć
		TRANSLITERATION_MAP.put('\u0106', "C");   // Ć
		TRANSLITERATION_MAP.put('\u0144', "n");   // ń
		TRANSLITERATION_MAP.put('\u0143', "N");   // Ń
		TRANSLITERATION_MAP.put('\u00F3', "o");   // ó
		TRANSLITERATION_MAP.put('\u00D3', "O");   // Ó

		// Croatian/Serbian/Bosnian
		TRANSLITERATION_MAP.put('\u0111', "d");   // đ
		TRANSLITERATION_MAP.put('\u0110', "D");   // Đ
		TRANSLITERATION_MAP.put('\u010D', "c");   // č
		TRANSLITERATION_MAP.put('\u010C', "C");   // Č
		TRANSLITERATION_MAP.put('\u017E', "z");   // ž
		TRANSLITERATION_MAP.put('\u017D', "Z");   // Ž
		TRANSLITERATION_MAP.put('\u0161', "s");   // š
		TRANSLITERATION_MAP.put('\u0160', "S");   // Š

		// Turkish
		TRANSLITERATION_MAP.put('\u011F', "g");   // ğ
		TRANSLITERATION_MAP.put('\u011E', "G");   // Ğ
		TRANSLITERATION_MAP.put('\u0131', "i");   // ı
		TRANSLITERATION_MAP.put('\u0130', "I");   // İ
		TRANSLITERATION_MAP.put('\u015F', "s");   // ş
		TRANSLITERATION_MAP.put('\u015E', "S");   // Ş

		// Icelandic
		TRANSLITERATION_MAP.put('\u00FE', "th");  // þ
		TRANSLITERATION_MAP.put('\u00DE', "TH");  // Þ
		TRANSLITERATION_MAP.put('\u00F0', "d");   // ð
		TRANSLITERATION_MAP.put('\u00D0', "D");   // Ð

		// Other common
		TRANSLITERATION_MAP.put('\u00F1', "n");   // ñ
		TRANSLITERATION_MAP.put('\u00D1', "N");   // Ñ
		TRANSLITERATION_MAP.put('\u00E7', "c");   // ç
		TRANSLITERATION_MAP.put('\u00C7', "C");   // Ç

		// Build allowed character lookup table
		for (int i = 0; i < ALLOWED_CHARS.length(); i++) {
			char c = ALLOWED_CHARS.charAt(i);
			if (c < 256) {
				ALLOWED_LOOKUP[c] = true;
			}
		}
	}

	/**
	 * Full PPRL text normalization.
	 *
	 * @param str input string
	 * @return normalized string
	 */
	public static String normalizeForPPRL(String str) {
		if (str == null || str.isEmpty()) {
			return "";
		}

		// Step 1: Transliterate special characters
		String normalized = transliterate(str);

		// Step 2: Remove diacritical marks via NFD
		normalized = removeDiacritics(normalized);

		// Step 3: Lowercase
		normalized = normalized.toLowerCase();

		// Step 4: Normalize whitespace
		normalized = normalizeWhitespace(normalized);

		// Step 5: Replace unmapped characters with fallback
		normalized = replaceUnmappedChars(normalized);

		return normalized;
	}

	/**
	 * Apply character-by-character transliteration using the TRANSLITERATION_MAP.
	 */
	public static String transliterate(String str) {
		StringBuilder result = new StringBuilder(str.length());
		for (int i = 0; i < str.length(); ) {
			int codePoint = str.codePointAt(i);
			if (codePoint <= Character.MAX_VALUE) {
				String replacement = TRANSLITERATION_MAP.get((char) codePoint);
				if (replacement != null) {
					result.append(replacement);
				} else {
					result.appendCodePoint(codePoint);
				}
			} else {
				result.appendCodePoint(codePoint);
			}
			i += Character.charCount(codePoint);
		}
		return result.toString();
	}

	/**
	 * Remove diacritical marks via Unicode NFD decomposition.
	 */
	public static String removeDiacritics(String str) {
		String nfd = Normalizer.normalize(str, Normalizer.Form.NFD);
		return DIACRITICS_PATTERN.matcher(nfd).replaceAll("");
	}

	/**
	 * Collapse whitespace and trim.
	 */
	public static String normalizeWhitespace(String str) {
		return WHITESPACE_PATTERN.matcher(str).replaceAll(" ").trim();
	}

	/**
	 * Replace characters not in the allowed set with the fallback character.
	 */
	public static String replaceUnmappedChars(String str) {
		StringBuilder result = new StringBuilder(str.length());
		for (int i = 0; i < str.length(); i++) {
			char c = str.charAt(i);
			if (c < 256 && ALLOWED_LOOKUP[c]) {
				result.append(c);
			} else {
				result.append(FALLBACK_CHAR);
			}
		}
		return result.toString();
	}
}
