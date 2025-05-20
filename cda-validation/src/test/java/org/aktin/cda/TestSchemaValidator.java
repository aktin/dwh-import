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
			TestValidator.v2ExampleDocuments,
			//TestValidator.v1ExampleDocuments,  // included in TestValidator.v2InvalidExampleDocuments
			//TestValidator.v1InvalidExampleDocuments,  // included in TestValidator.v2024ExampleDocuments
			//TestValidator.v2InvalidExampleDocuments,  // included in TestValidator.v2024ExampleDocuments
			TestValidator.v2024ExampleDocuments
		};
		for( String[] collection : validSchemaCollections ){
			for( String example : collection ){
				errorPrinter.setSystemId(example);
				try( InputStream in = getClass().getResourceAsStream(example) ){
					Assert.assertNotNull("File not found at " + example, in);
					Assert.assertTrue("File is empty " + example, in.available() > 0);
					boolean isValid = validator.validate(new StreamSource(in), errorPrinter);
					Assert.assertTrue("Valid schema expected for " + example, isValid);
				}
			}
		}
	}
	@Test
	public void expectSchemaErrorForSchemaErrorExample() throws Exception{
		for( String example : TestValidator.invalidSchemaDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertNotNull("File not found at " + example, in);
				Assert.assertTrue("File is empty " + example, in.available() > 0);
				// all documents should produce schema validation errors
				boolean isValid = validator.validate(new StreamSource(in), SuppressValidationErrors.staticInstance);
				Assert.assertFalse("Invalid schema expected for " + example, isValid);
			}
		}
	}
}
