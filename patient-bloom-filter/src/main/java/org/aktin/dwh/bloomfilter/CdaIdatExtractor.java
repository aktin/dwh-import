package org.aktin.dwh.bloomfilter;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.namespace.NamespaceContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

/**
 * Extracts IDAT field values from CDA documents using configurable XPath expressions.
 * <p>
 * Given a map of field names to XPath expressions (from aktin.properties), evaluates
 * each XPath against the CDA document DOM and returns the extracted values.
 */
public class CdaIdatExtractor {

	private static final Logger log = Logger.getLogger(CdaIdatExtractor.class.getName());
	private static final String CDA_NAMESPACE = "urn:hl7-org:v3";

	private final Map<String, XPathExpression> compiledXPaths;

	/**
	 * Create extractor with pre-compiled XPath expressions.
	 *
	 * @param fieldXPaths map of field name to XPath expression string
	 */
	public CdaIdatExtractor(Map<String, String> fieldXPaths) {
		this.compiledXPaths = new HashMap<>();
		XPathFactory xpathFactory = XPathFactory.newInstance();
		XPath xpath = xpathFactory.newXPath();
		xpath.setNamespaceContext(new CdaNamespaceContext());

		for (Map.Entry<String, String> entry : fieldXPaths.entrySet()) {
			try {
				XPathExpression expr = xpath.compile(entry.getValue());
				compiledXPaths.put(entry.getKey(), expr);
			} catch (XPathExpressionException e) {
				log.log(Level.WARNING, "Invalid XPath for field '" + entry.getKey() + "': " + entry.getValue(), e);
			}
		}
	}

	/**
	 * Extract IDAT values from a CDA document.
	 *
	 * @param cda the CDA document
	 * @return map of field name to extracted value (null if not found)
	 */
	public Map<String, String> extractIdat(Document cda) {
		Map<String, String> result = new HashMap<>();

		for (Map.Entry<String, XPathExpression> entry : compiledXPaths.entrySet()) {
			String fieldName = entry.getKey();
			try {
				String value = (String) entry.getValue().evaluate(cda, XPathConstants.STRING);
				if (value != null && !value.trim().isEmpty()) {
					result.put(fieldName, value.trim());
				} else {
					log.fine("No value found for IDAT field '" + fieldName + "' in CDA document");
					result.put(fieldName, null);
				}
			} catch (XPathExpressionException e) {
				log.log(Level.WARNING, "XPath evaluation failed for field '" + fieldName + "'", e);
				result.put(fieldName, null);
			}
		}

		return result;
	}

	/**
	 * Namespace context for CDA documents.
	 * Maps the "cda" prefix to the HL7 CDA namespace.
	 */
	private static class CdaNamespaceContext implements NamespaceContext {

		@Override
		public String getNamespaceURI(String prefix) {
			if ("cda".equals(prefix)) {
				return CDA_NAMESPACE;
			}
			return javax.xml.XMLConstants.NULL_NS_URI;
		}

		@Override
		public String getPrefix(String namespaceURI) {
			if (CDA_NAMESPACE.equals(namespaceURI)) {
				return "cda";
			}
			return null;
		}

		@Override
		public Iterator<String> getPrefixes(String namespaceURI) {
			return null;
		}
	}
}
