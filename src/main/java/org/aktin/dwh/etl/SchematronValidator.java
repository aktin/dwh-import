package org.aktin.dwh.ulicor;

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


public class XMLParser {
	
	public XMLParser () {
		
	}
	
	private static final Logger log = Logger.getLogger(XMLParser.class.getName());
	
	public static void main(String[] args) {
		XMLParser p = new XMLParser();
		
		p.runSchema();
//		p.runXSL();
		
	}
	
	void runSchema () {

		TransformerFactory factory;
		
		SchemaFactory sFactory = SchemaFactory.newInstance(XmlSchemaNsUris.SCHEMATRON_NS_URI);

//		factory = TransformerFactory.newInstance();
		
		File inXML, inSCH, inXSL, outXSL, outXML;
		// init
//		inXML = new File("src/main/resources/schematron/test_in_ab.xml");
//		inXML = new File("src/main/resources/schematron/test_in.xml");
//		inXML = new File("src/main/resources/dwh-eav-example.xml");
		inXML = new File("CDA Basismodul/basismodul-beispiel-storyboard01_complete.xml");
//		inXML = new File("CDA Basismodul/basismodul-beispiel-storyboard01.xml");

//		inSCH = new File("src/main/resources/schematron/tstBuchSchema1.sch");
//		inSCH = new File("src/main/resources/schematron/tstBuchSchema1.sch");
//		inSCH =  new File("src/main/resources/schematron/testschema.sch");
		inSCH =  new File("src/main/resources/schematron/aktin-basism.sch");
		
		
		outXSL = new File("src/main/resources/schematron/tmp_schematron.xsl");
		
		outXML = new File("src/main/resources/schematron/testOut.xml");
		
		
		Source sourceSCH = new StreamSource(inSCH);
		Source sourceXML = new StreamSource(inXML);
		
		StringWriter w = new StringWriter();
		StreamResult result = new StreamResult(w);
//		
//		OutputStream streamXSL;
//		Result resultXSL;
//		
//		Templates t1schematron;
		
		try {
			
			Schema myschema = sFactory.newSchema(sourceSCH);
			Validator validator = myschema.newValidator();
			
			validator.validate(sourceXML, result);
			
//			
//			streamXSL = new FileOutputStream(outXSL);
//			resultXSL = new StreamResult(streamXSL);
//			
//			t1schematron = factory.newTemplates(sourceXSL);
//			Transformer t1 = t1schematron.newTransformer();
//
//			t1.transform(sourceSCH, resultXSL);
//			
//			log.info("Transform successful ");
			

//			schemaOutStream.close();
			log.info("success! ");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			log.info("end " +  w.toString());
		}
	}
	
	void runXSL () {
		// init

		TransformerFactory factory;
		File inXML, inSCH, inXSL, outXSL, outXML;
		
		factory = TransformerFactory.newInstance();
		
		inXML = new File("src/main/resources/schematron/Saxon/samples/data/books.xml");
		
		inXSL = new File("src/main/resources/schematron/Saxon/samples/styles/books.xsl");
		
		outXML = new File("src/main/resources/schematron/saxon_test_out.xml");
		
		Source sourceXML = new StreamSource(inXML);
		Source sourceXSL = new StreamSource(inXSL);
		
		StringWriter w = new StringWriter();
		StreamResult result = new StreamResult(w);
		
		OutputStream streamXML;
		Result resultXML;
		
		Templates t1schematron;
		
		try {
			
			streamXML = new FileOutputStream(outXML);
			resultXML = new StreamResult(streamXML);
			
			t1schematron = factory.newTemplates(sourceXSL);
			Transformer t1 = t1schematron.newTransformer();

			t1.transform(sourceXML, resultXML);
			
			log.info("Transform successful ");
			
			streamXML.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
