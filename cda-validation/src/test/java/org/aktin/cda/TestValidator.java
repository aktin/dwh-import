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
	
	private static final String[] exampleDocuments = new String[]{
			"/CDAexample/basismodul-beispiel-storyboard01.xml",
			"/CDAexample/basismodul-beispiel-storyboard02.xml",
			"/CDAexample/basismodul-beispiel-storyboard04.xml",
			"/CDAexample/basismodul-beispiel-storyboard01_complete03.xml",
			"/CDAexample/basismodul-beispiel-storyboard01_mandatory.xml"
			};
	private static final String[] invalidExampleDocuments = new String[]{
			"/CDAexample/basismodul-beispiel-storyboard01-error1.xml"
	};
	
	@Test
	public void validateExampleDocuments() throws TransformerException, IOException, XPathExpressionException{
		Validator v = new Validator();
		for( String example : exampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in));
				Assert.assertTrue("Successful validation expected", res.isValid());
			}
		}
		for( String example : invalidExampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				ValidationResult res = v.validate(new StreamSource(in));
				Assert.assertFalse("Document validation should produce errors", res.isValid());
			}
		}
	}
	
	@Test
	public void validateErrorsForOtherDocuments() throws TransformerConfigurationException, IOException{
		Validator v = new Validator();
		InputStream in = getClass().getResourceAsStream("/CDAexample/invalid-syntax.xml");
		Assert.assertTrue(in.available() > 0);
		try {
			v.validate(new StreamSource(in));
			Assert.fail();
		} catch (XPathExpressionException e) {
			Assert.fail();
		} catch (TransformerException e) {
			// expected error
		}
		in.close();

		// check other XML document
		// should return result
		in = getClass().getResourceAsStream("/CDAexample/other-document.xml");
		try {
			ValidationResult res = v.validate(new StreamSource(in));
			// should not pass validation
			Assert.assertFalse(res.isValid());
		} catch (XPathExpressionException | TransformerException e) {
			Assert.fail();
		}
		in.close();
	}
}
