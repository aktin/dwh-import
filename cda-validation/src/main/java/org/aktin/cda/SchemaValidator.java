package org.aktin.cda;

import java.io.IOException;

import javax.xml.XMLConstants;
import javax.xml.transform.Source;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class SchemaValidator {
	private Schema schema;
	
	public SchemaValidator() throws SAXException{
		SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		this.schema = sf.newSchema(getClass().getResource("/schemas/CDA.xsd"));
	}

	public static class ErrorForwarder implements ErrorHandler{
		private ValidationErrorHandler target;
		private int errorCount;
		public ErrorForwarder(ValidationErrorHandler target){
			this.target = target;
			this.errorCount = 0;
		}
		@Override
		public void warning(SAXParseException exception) throws SAXException {
			target.warning(exception.getMessage(), exception);
		}

		@Override
		public void error(SAXParseException exception) throws SAXException {
			this.errorCount ++;
			target.error(exception.getMessage(), exception);
		}

		@Override
		public void fatalError(SAXParseException exception) throws SAXException {
			this.errorCount ++;
			target.error(exception.getMessage(), exception);
		}
		public int getErrorCount(){return errorCount;}
	}

	public boolean validate(Source source, ValidationErrorHandler handler){
		Validator validator = schema.newValidator();
		ErrorForwarder fw = new ErrorForwarder(handler);
		validator.setErrorHandler(fw);
		try {
			validator.validate(source);
		} catch (SAXException e) {
			// exception already received by handler
			if( fw.getErrorCount() == 0 ){
				// if not, add the exception
				handler.error(e.getMessage(), e);
			}
		} catch (IOException e) {
			// IO error during validation
			handler.error("IO error during validation: "+e.getMessage(), e);
		}
		return fw.getErrorCount() == 0;
	}
}
