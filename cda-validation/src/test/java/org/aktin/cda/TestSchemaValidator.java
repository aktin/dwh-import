package org.aktin.cda;

import java.io.InputStream;

import javax.xml.transform.stream.StreamSource;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.xml.sax.SAXException;

public class TestSchemaValidator {
	private SchemaValidator validator;
	private PrintValidationErrors errorPrinter;

	@Before
	public void initialiseValidator() throws SAXException{
		validator = new SchemaValidator();
		errorPrinter = new PrintValidationErrors();
	}
	private static class PrintValidationErrors implements ValidationErrorHandler{
		private String systemId;
		@Override
		public void warning(String message, Throwable cause) {
			System.err.println("Validation warning for "+systemId);
			if( cause != null ){
				cause.printStackTrace();
			}
		}

		@Override
		public void error(String message, Throwable cause) {
			System.err.println("Validation ERROR for "+systemId);
			if( cause != null ){
				cause.printStackTrace();
			}
		}
		public void setSystemId(String systemId){
			this.systemId = systemId;
		}
	}
	private static class SuppressValidationErrors implements ValidationErrorHandler{
		@Override
		public void warning(String message, Throwable cause) {
		}
		@Override
		public void error(String message, Throwable cause) {
		}
	}
	@Test
	public void assumeValidSchemaForExampleDocuments() throws Exception{
		String[][] validSchemaCollections = new String[][]{
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
		ValidationErrorHandler h = new SuppressValidationErrors();
		for( String example : TestValidator.invalidSchemaDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				// all documents should produce schema validation errors
				Assert.assertFalse(validator.validate(new StreamSource(in), h));
			}
		}
	}
}
