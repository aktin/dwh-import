package org.aktin.dwh.etl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import java.util.logging.Logger;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import se.uglisch.XmlSchemaNsUris;


public class SchematronValidator {
	
	public SchematronValidator () {
		
	}
	
	private static final Logger log = Logger.getLogger(SchematronValidator.class.getName());
	
	public static void main(String[] args) {
		SchematronValidator p = new SchematronValidator();
		
		p.runSchema();
		
	}
	
	void runSchema () {

		
		SchemaFactory sFactory = SchemaFactory.newInstance(XmlSchemaNsUris.SCHEMATRON_NS_URI);
		
		File inXML, inSCH;
		// init
		inXML = new File("cda_basismodul/basismodul-beispiel-storyboard01_complete_t01.xml");
//		inXML = new File("cda_basismodul/basismodul-beispiel-storyboard01_complete.xml");
//		inXML = new File("cda_basismodul/basismodul-beispiel-storyboard01.xml");

		inSCH =  new File("src/main/resources/schematron/aktin-basism.sch");
		
		
		
		Source sourceSCH = new StreamSource(inSCH);
		Source sourceXML = new StreamSource(inXML);
		
		try {
			
			Schema myschema = sFactory.newSchema(sourceSCH);
			Validator validator = myschema.newValidator();
			
			validator.validate(sourceXML);
			
			log.info("success! ");
		} catch (Exception e) {
			log.info("Error in schematron validation: ");
			e.printStackTrace();
		} finally {
			log.info("end ");
		}
	}

}
