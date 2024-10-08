package org.aktin.cda;

import java.io.InputStream;

import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;

import org.junit.Assert;
import org.junit.Test;

public class TestValidator {
	private static final String v2TemplateId = "1.2.276.0.76.10.1019";
	private static final String v1TemplateId = "1.2.276.0.76.10.1015";

	public static final String[] v2ExampleDocuments = new String[]{
		"/Additional Examples/basismodul-v2-beispiel-storyboard01-complete.xml",
		//"/Additional Examples/basismodul-v2-beispiel-storyboard01-minimal.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard02.xml",
		"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard04.xml",
	};
	public static final String[] v1ExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard02.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard04.xml"
		};
	public static final String[] invalidSchemaDocuments = new String[]{
			"/Additional Examples/invalid-xsd.xml"  //should be in invalid, XSD not checked yet
	};
	public static final String[] v1InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01-error1.xml",
		};
	public static final String[] v2InvalidExampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v2/basismodul-v2-beispiel-storyboard01-error1.xml",
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",	//old version, now invalid
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard02.xml",	//old version, now invalid
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard04.xml",	//old version, now invalid
			"/Additional Examples/basismodul-beispiel-storyboard01-complete.xml",	//old version, now invalid
			"/Additional Examples/basismodul-beispiel-storyboard01-mandatory.xml"	//old version, now invalid
		};
	
	@Test
	public void validateExampleDocuments() throws Exception{
		Validator v = new Validator();
		ValidationErrorPrinter p = new ValidationErrorPrinter();
		CDAParser parser = new CDAParser();
		
		for( String example : v2ExampleDocuments ){
			p.setSystemId(example);
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				boolean isValid = v.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, p);
				if( !isValid ){
					Assert.fail("Successful validation expected for "+example);
				}
			}
		}
		for( String example : v2InvalidExampleDocuments ){
			p.setSystemId(example);
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				boolean isValid = v.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
				Assert.assertFalse("Validation failure expected for "+example, isValid);
			}
		}
		
// v1 no longer supported
//		for( String example : v1InvalidExampleDocuments ){
//			p.setSystemId(example);
//			try( InputStream in = getClass().getResourceAsStream(example) ){
//				Assert.assertTrue(in.available() > 0);
//				boolean isValid = v.validate(parser.buildDOM(new StreamSource(in)), v1TemplateId, SuppressValidationErrors.staticInstance);
//				Assert.assertFalse("Validation failure expected for "+example, isValid);
//			}
//		}
//		for( String example : v1ExampleDocuments ){
//			p.setSystemId(example);
//			try( InputStream in = getClass().getResourceAsStream(example) ){
//				Assert.assertTrue(in.available() > 0);
//				boolean isValid = v.validate(parser.buildDOM(new StreamSource(in)), v1TemplateId, p);
//				if( !isValid ){
//					Assert.fail("Successful validation expected for "+example);
//				}
//			}
//		}
	}
	
	//@Test
	public void validateErrorsForOtherDocuments() throws Exception{
		Validator v = new Validator();
		CDAParser parser = new CDAParser();
		InputStream in = getClass().getResourceAsStream("/Additional Examples/invalid-syntax.xml");
		Assert.assertTrue(in.available() > 0);
		try {
			v.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
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
			boolean isValid = v.validate(parser.buildDOM(new StreamSource(in)), v2TemplateId, SuppressValidationErrors.staticInstance);
			// should not pass validation
			Assert.assertFalse(isValid);
		} catch (XPathExpressionException | TransformerException e) {
			Assert.fail();
		}
		in.close();
	}
}
