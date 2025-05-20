package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;

import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.w3c.dom.Document;

public class TestCDAParser {
	private static final String[] exampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",
			"/CDA Beispiele Episodenzusammenfassung Notaufnahmeregister 2024/episodenzusammenfassung-notaufnahmeregister2024-beispiel-storyboard01.xml"
	};

	private CDAParser parser;

	@Before
	public void setup() {
		parser = new CDAParser();
	}

	@Test
	public void extractTemplateIDsV2() throws TransformerException, IOException, XPathExpressionException {
		String example = exampleDocuments[0];
		try (InputStream in = getClass().getResourceAsStream(example)) {
			Assert.assertNotNull("File not found at " + example, in);
			Assert.assertTrue("File is empty " + example, in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String templateId = parser.extractTemplateId(cda);
			Assert.assertEquals("1.2.276.0.76.10.1015", templateId);
		}
	}

	@Test
	public void extractTemplateIDs2024() throws TransformerException, IOException, XPathExpressionException {
		String example = exampleDocuments[1];
		try (InputStream in = getClass().getResourceAsStream(example)) {
			Assert.assertNotNull("File not found at " + example, in);
			Assert.assertTrue("File is empty " + example, in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String templateId = parser.extractTemplateId(cda);
			Assert.assertEquals("1.2.276.0.76.3.1.195.10.2", templateId);
		}
	}

	@Test
	public void extractPatientID() throws TransformerException, IOException, XPathExpressionException {
		String example = exampleDocuments[0];
		try (InputStream in = getClass().getResourceAsStream(example)) {
			Assert.assertNotNull("File not found at " + example, in);
			Assert.assertTrue("File is empty " + example, in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String[] pat = parser.extractPatientId(cda);
			Assert.assertEquals("1.2.276.0.76.4.8", pat[0]);
			Assert.assertEquals("1234567890", pat[1]);
		}
	}
}
