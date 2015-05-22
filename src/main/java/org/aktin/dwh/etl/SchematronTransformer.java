package org.aktin.dwh.etl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class SchematronTransformer {
	// logger
	private static final Logger log = Logger.getLogger(SchematronTransformer.class.getName());
	
	// if FORCE_PARSE is true then schematron will be reparsed
	static final boolean FORCE_PARSE = false; 
	static final boolean CLEAN_UP = false; 
	
	TransformerFactory factory;
	File schemaFile;
	File schemaXSLFile;
	File cdaFile;
	File xmlOutFile;
	
	public SchematronTransformer (File sch, File xsl, File cda, File out) {
		factory = TransformerFactory.newInstance();
		
		schemaFile = sch;
		schemaXSLFile = xsl;
		cdaFile = cda;
		xmlOutFile = out;
		
	}
	
	
	public static void main(String[] args) {
		
		File schemaFile = new File("src/main/resources/schematron/aktin-basism.sch");
		File schemaXSLFile = new File("src/main/resources/schematron/aktin-basism.xsl");
//		File cdaFile = new File("CDA Basismodul/basismodul-beispiel-storyboard01_complete.xml");
		File cdaFile = new File("CDA Basismodul/basismodul-test-file.xml");
		File outFile = new File("out/basismodul-TransformationResult.xml");
		
		SchematronTransformer p = new SchematronTransformer(schemaFile, schemaXSLFile, cdaFile, outFile);
		
		p.schematronTransform();
		p.modulTransform();
		
	}
	
	public void schematronTransform () {
		// check whether schematron is already parsed (whether file exist) - if force parse, then schema will be reparsed
		if (!FORCE_PARSE && schemaXSLFile.isFile()) {
			log.info("Schematron is already parsed, going to XML transformation");
			return;
		}

		File xslTransformFile_0 = new File("src/main/resources/schematron/iso-xslt2/iso_dsdl_include.xsl");
		File xslTransformFile_1 = new File("src/main/resources/schematron/iso-xslt2/iso_abstract_expand.xsl");
		File xslTransformFile_2 = new File("src/main/resources/schematron/iso-xslt2/iso_svrl_for_xslt2.xsl");
					
		File xslTmpFile_1 = new File("out/tmp/aktin-basism_STEP1.xsl");
		File xslTmpFile_2 = new File("out/tmp/aktin-basism_STEP2.xsl");
		
		if (CLEAN_UP) {
			xslTmpFile_1.deleteOnExit();
			xslTmpFile_2.deleteOnExit();
		}

		try{
	    	
			Source schemaXSLT = new StreamSource(xslTransformFile_0);
			Source schematronS = new StreamSource(schemaFile);
			
			OutputStream transOutStream = new FileOutputStream(xslTmpFile_1);
			Result schemaOut = new StreamResult(transOutStream);
			
			Transformer transformer1 = factory.newTransformer(schemaXSLT);
			transformer1.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer1.transform(schematronS, schemaOut);
			transOutStream.close();
			
			log.info("Schematron Transformation 1 done");
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			
	    	
			schemaXSLT = new StreamSource(xslTransformFile_1);
			Source Input2 = new StreamSource(xslTmpFile_1);
			
			transOutStream = new FileOutputStream(xslTmpFile_2);
			Result Step2Out = new StreamResult(transOutStream);
			
			Transformer transformer2 = factory.newTransformer(schemaXSLT);
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer2.transform(Input2, Step2Out);
			transOutStream.close();
			
			log.info("Schematron Transformation 2 done");
			
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	    	
			schemaXSLT = new StreamSource(xslTransformFile_2);
			Source Input3 = new StreamSource(xslTmpFile_2);
			
			transOutStream = new FileOutputStream(schemaXSLFile);
			Result Step3Out = new StreamResult(transOutStream);
			
			Transformer transformer3 = factory.newTransformer(schemaXSLT);
			transformer3.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer3.transform(Input3, Step3Out);
			transOutStream.close();
			
			log.info("Schematron Transformation 3 done");
			
		} catch (Exception e) {
			log.log(Level.SEVERE, "Schematron Transformation failed",e);
		}
		
	}
	

	public void modulTransform() {
		try {			
			Source schemaXSLT = new StreamSource(schemaXSLFile);
			Source CDA = new StreamSource(cdaFile);
			
			OutputStream CDAOutStream = new FileOutputStream(xmlOutFile);
			Result CDAOut = new StreamResult(CDAOutStream);
			
			Transformer transformer4 = factory.newTransformer(schemaXSLT);
			transformer4.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer4.transform(CDA, CDAOut);
			
			log.info("Basismodul Transformation / Validation done");

		} catch (Exception e) {
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
	}
	
}