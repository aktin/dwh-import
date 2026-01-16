package org.aktin.cda;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TestValidator {
	private static final String v2025trTemplateId = "1.2.276.0.76.3.1.195.10.92";
	private static final String v2TemplateId = "1.2.276.0.76.10.1019";

	public static final String[] v2025trExampleDocuments = new String[]{
			"/CDA-beispiele-episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025-beispiel-storyboard01.xml",
			"/CDA-beispiele-episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025-beispiel-storyboard02.xml",
			"/Additional Examples/maximalbeispiel-v2025tr.xml"
	};
	public static final String[] v2ExampleDocuments = new String[]{
		"/Additional Examples/basismodul-v2-beispiel-storyboard01-complete.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard02.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard04.xml",
	};
	public static final String[] v1ExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard02.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard04.xml",
			"/Additional Examples/basismodul-beispiel-storyboard01-complete.xml",
			"/Additional Examples/basismodul-beispiel-storyboard01-mandatory.xml"
		};
	public static final String[] invalidSchemaDocuments = new String[]{
			"/Additional Examples/invalid-xsd.xml"  //should be in invalid, XSD not checked yet
	};
	public static final String[] v1InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01-error1.xml",
		};
	public static final String[] v2InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01-error1.xml"
		};

	private Validator validator;
	private CDAParser parser;

	@Before
	public void initialize() throws Exception {
		validator = new Validator();
		parser = new CDAParser();
	}

	@Test
	public void validateExampleDocumentsV2_expectValid() throws Exception {
		ValidationErrorPrinter p = new ValidationErrorPrinter();

		for (String example : v2ExampleDocuments) {
			p.setSystemId(example);
			try (InputStream in = getClass().getResourceAsStream(example)) {
				Assert.assertNotNull("File not found at " + example, in);
				Assert.assertTrue("File is empty " + example, in.available() > 0);
				boolean isValid = validator.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, p);
				Assert.assertTrue("Successful validation expected for " + example, isValid);
			}
		}
	}

	@Test
	public void validateExampleDocumentsV2_expectInvalid() throws Exception {
		ArrayList<String> invalidDocuments = new ArrayList<>();
		invalidDocuments.addAll(Arrays.asList(v2InvalidExampleDocuments));
		invalidDocuments.addAll(Arrays.asList(v1InvalidExampleDocuments));
		invalidDocuments.addAll(Arrays.asList(v1ExampleDocuments));

		for (String example : invalidDocuments) {
			try (InputStream in = getClass().getResourceAsStream(example)) {
				Assert.assertNotNull("File not found at " + example, in);
				Assert.assertTrue("File is empty " + example, in.available() > 0);
				boolean isValid = validator.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
				Assert.assertFalse("Validation failure expected for " + example, isValid);
			}
		}
	}

	@Test
	public void validateExampleDocuments2025tr_expectValid() throws Exception {
		ValidationErrorPrinter p = new ValidationErrorPrinter();

		for (String example : v2025trExampleDocuments) {
			p.setSystemId(example);
			try (InputStream in = getClass().getResourceAsStream(example)) {
				Assert.assertNotNull("File not found at " + example, in);
				Assert.assertTrue("File is empty " + example, in.available() > 0);
				boolean isValid = validator.validate(parser.buildDOM(new StreamSource(in)), v2025trTemplateId, p);
				Assert.assertTrue("Successful validation expected for " + example, isValid);
			}
		}
	}

	@Test
	public void validateExampleDocuments2025tr_expectInvalid() throws Exception {
		ArrayList<String> invalidDocuments = new ArrayList<>();
		// Add invalid documents from previous versions
		invalidDocuments.addAll(Arrays.asList(v2InvalidExampleDocuments));
		invalidDocuments.addAll(Arrays.asList(v1InvalidExampleDocuments));
		// Add valid documents from previous versions (which should be invalid in 2025)
		invalidDocuments.addAll(Arrays.asList(v2ExampleDocuments));
		invalidDocuments.addAll(Arrays.asList(v1ExampleDocuments));

		for (String example : invalidDocuments) {
			try (InputStream in = getClass().getResourceAsStream(example)) {
				Assert.assertNotNull("File not found at " + example, in);
				Assert.assertTrue("File is empty " + example, in.available() > 0);
				boolean isValid = validator.validate(parser.buildDOM(new StreamSource(in)), v2025trTemplateId, SuppressValidationErrors.staticInstance);
				Assert.assertFalse("Validation failure expected for " + example, isValid);
			}
		}
	}

	@Test
	public void validateErrorsForOtherDocuments_syntaxError() throws Exception {
		String example = "/Additional Examples/invalid-syntax.xml";
		try (InputStream in = getClass().getResourceAsStream(example)) {
			Assert.assertNotNull("File not found at " + example, in);
			Assert.assertTrue("File is empty " + example, in.available() > 0);
			try {
				validator.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
				Assert.fail("XML syntax error expected, but validation occurred without errors for " + example);
			} catch (XPathExpressionException e) {
				Assert.fail("XML syntax error expected, but XPathExpressionException occurred for " + example);
			} catch (TransformerException e) {
				// expected error
			}
		}
	}

	@Test
	public void validateErrorsForOtherDocuments_nonCDA_expectInvalid() throws Exception {
		String example = "/Additional Examples/other-document.xml";
		try (InputStream in = getClass().getResourceAsStream(example)) {
			Assert.assertNotNull("File not found at " + example, in);
			Assert.assertTrue("File is empty " + example, in.available() > 0);
			boolean isValid = validator.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
			Assert.assertFalse("Validation failure expected for", isValid);
		}
	}
}
