package org.aktin.cda;

import javax.xml.XMLConstants;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.xml.sax.SAXException;

public class SchemaValidator {
	private Validator validator;
	
	public SchemaValidator() throws SAXException{
		SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		Schema schema = sf.newSchema(getClass().getResource("/schemas/CDA.xsd"));
		validator = schema.newValidator();
	}
	// TODO
}
