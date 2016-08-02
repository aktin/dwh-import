package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;

import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;

import org.junit.Assert;
import org.junit.Test;

public class TestValidator {
	private static final String v2TemplateId = "1.2.276.0.76.10.1019";
	private static final String v1TemplateId = "1.2.276.0.76.10.1015";

	private static final String[] v2ExampleDocuments = new String[]{
		"/Additional Examples/basismodul-v2-beispiel-storyboard01-complete.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard02.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard04.xml",
		"/Additional Examples/invalid-xsd.xml"  //should be in invalid, XSD not checked yet
	};
	private static final String[] v1ExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard02.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard04.xml"
		};
	private static final String[] v1InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01-error1.xml",
		};
	private static final String[] v2InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01-error1.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",	//old version, now invalid
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard02.xml",	//old version, now invalid
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard04.xml",	//old version, now invalid
			"/Additional Examples/basismodul-beispiel-storyboard01-complete.xml",	//old version, now invalid
			"/Additional Examples/basismodul-beispiel-storyboard01-mandatory.xml"	//old version, now invalid
		};
	
	@Test
	public void validateExampleDocuments() throws TransformerException, IOException, XPathExpressionException{
		Validator v = new Validator();
		for( String example : v2ExampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in), v2TemplateId);
				if( !res.isValid() ){
					res.forEachErrorMessage(System.err::println);
					Assert.fail("Successful validation expected for "+example+", but got "+res.getErrorCount()+" errors");
				}
			}
		}
		for( String example : v2InvalidExampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in), v2TemplateId);
				Assert.assertFalse("Validation failure expected for "+example, res.isValid());
			}
		}
		for( String example : v1InvalidExampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in), v1TemplateId);
				Assert.assertFalse("Validation failure expected for "+example, res.isValid());
			}
		}
		for( String example : v1ExampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in), v1TemplateId);
				if( !res.isValid() ){
					res.forEachErrorMessage(System.err::println);
					Assert.fail("Successful validation expected for "+example+", but got "+res.getErrorCount()+" errors");
				}
			}
		}
	}
	
	@Test
	public void validateErrorsForOtherDocuments() throws TransformerConfigurationException, IOException{
		Validator v = new Validator();
		InputStream in = getClass().getResourceAsStream("/Additional Examples/invalid-syntax.xml");
		Assert.assertTrue(in.available() > 0);
		try {
			v.validate(new StreamSource(in), v2TemplateId);
			Assert.fail();
		} catch (XPathExpressionException e) {
			Assert.fail();
		} catch (TransformerException e) {
			// expected error
		}
		in.close();

		// check other XML document
		// should return result
		in = getClass().getResourceAsStream("/Additional Examples/other-document.xml");
		try {
			ValidationResult res = v.validate(new StreamSource(in), v2TemplateId);
			// should not pass validation
			Assert.assertFalse(res.isValid());
		} catch (XPathExpressionException | TransformerException e) {
			Assert.fail();
		}
		in.close();
	}
}
