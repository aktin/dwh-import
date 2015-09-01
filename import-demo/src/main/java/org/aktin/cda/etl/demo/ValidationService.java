package org.aktin.cda.etl.demo;

import java.io.IOException;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.ValidationResult;
import org.aktin.cda.Validator;

public class ValidationService {
	private Validator validator;
	
	public ValidationService() throws IOException{
		try {
			validator = new Validator();
		} catch (TransformerConfigurationException e ) {
			throw new IOException(e);
		}
	}
	public ValidationResult validate(Source source) throws IOException{
		synchronized( validator ){
			try {
				return validator.validate(source);
			} catch (XPathExpressionException | TransformerException e) {
				throw new IOException(e);
			}
		}
	}
}
