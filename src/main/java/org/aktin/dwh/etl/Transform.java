package org.aktin.dwh.etl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Endpoint;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceProvider;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.http.HTTPBinding;

import org.aktin.dwh.ulicor.XMLParser;


public class Transform {
	
	TransformerFactory factory;
	
	public Transform () {
		factory = TransformerFactory.newInstance();
	}
	
	private static final Logger log = Logger.getLogger(XMLParser.class.getName());
	
	public static void main(String[] args) {
		Transform p = new Transform();
		
		p.transform();
		
	}


	public void transform() {
		try {
			
//			File xsltFile = new File ("src/main/resources/schematron/Saxon/samples/styles/books.xsl");
//			File xmlFile = new File ("src/main/resources/schematron/Saxon/samples/data/books.xml");			
//			File outFile = new File ("src/main/resources/schematron/Saxon/samples/tmp_out.html");
			
			File SchematronFile = new File("src/main/resources/schematron/aktin-basism.sch");
			//File SchematronFile = new File("src/main/resources/schematron/aktin-basismTEST.sch");
			File XSLFile = new File("src/main/resources/schematron/iso-xslt2/iso_svrl_for_xslt2.xsl");
			File outFile1 = new File("src/main/resources/schematron/aktin-basism.xsl");
        	
			Source schemaXSLT = new StreamSource(XSLFile);
			Source Schematron = new StreamSource(SchematronFile);
			
			OutputStream schemaOutStream = new FileOutputStream(outFile1);
			Result schemaOut = new StreamResult(schemaOutStream);
			
			//Transformer t1 = factory.newTransformer(); //identity transformer
			Transformer transformer = factory.newTransformer(schemaXSLT);
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer.transform(Schematron, schemaOut);
			
			log.info("Schematron Transformation done");
			
			File CDAFile = new File ("src/main/resources/basismodul-beispiel-storyboard01_complete.xml");
			File outFile2 = new File("src/main/resources/basismodul-TransformationResult.xml");
			
			Source schemaXSLT2 = new StreamSource(outFile1);
			Source CDA = new StreamSource(CDAFile);
			
			OutputStream CDAOutStream = new FileOutputStream(outFile2);
			Result CDAOut = new StreamResult(CDAOutStream);
			
			Transformer transformer2 = factory.newTransformer(schemaXSLT2);
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer2.transform(CDA, CDAOut);
			
			log.info("Basismodul Transformation done");

		} catch (Exception e) {
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
	}

}
