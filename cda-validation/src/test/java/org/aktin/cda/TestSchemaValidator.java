package org.aktin.cda;

import java.io.InputStream;

import javax.xml.transform.stream.StreamSource;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.xml.sax.SAXException;

public class TestSchemaValidator {
	private SchemaValidator validator;
	private ValidationErrorPrinter errorPrinter;

	@Before
	public void initialiseValidator() throws SAXException{
		validator = new SchemaValidator();
		errorPrinter = new ValidationErrorPrinter();
	}
	@Test
	public void assumeValidSchemaForExampleDocuments() throws Exception{
		String[][] validSchemaCollections = new String[][]{
			TestValidator.v2024ExampleDocuments,
			TestValidator.v2ExampleDocuments,
			TestValidator.v1ExampleDocuments,
			TestValidator.v1InvalidExampleDocuments,
			TestValidator.v2InvalidExampleDocuments
		};
		for( String[] collection : validSchemaCollections ){
			for( String example : collection ){
				errorPrinter.setSystemId(example);
				try( InputStream in = getClass().getResourceAsStream(example) ){
					Assert.assertTrue(in.available() > 0);
					Assert.assertTrue(validator.validate(new StreamSource(in), errorPrinter));
				}
			}
		}
	}
	@Test
	public void expectSchemaErrorForSchemaErrorExample() throws Exception{
		for( String example : TestValidator.invalidSchemaDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				// all documents should produce schema validation errors
				Assert.assertFalse(validator.validate(new StreamSource(in), SuppressValidationErrors.staticInstance));
			}
		}
	}
}
