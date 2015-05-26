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

public class Transform {
	
	TransformerFactory factory;
	
	public Transform () {
		factory = TransformerFactory.newInstance();
	}
	
	private static final Logger log = Logger.getLogger(Transform.class.getName());
	
	public static void main(String[] args) {
		Transform p = new Transform();
		
		p.transform();
		
	}


	public void transform() {
		try {			
			File SchematronFile = new File("src/main/resources/schematron/aktin-basism.sch");
			File XSLFile1 = new File("src/main/resources/schematron/iso-xslt2/iso_dsdl_include.xsl");
						
			File Step1Out = new File("src/main/resources/schematron/aktin-basism_STEP1.xsl");
        	
			Source schemaXSLT = new StreamSource(XSLFile1);
			Source Schematron = new StreamSource(SchematronFile);
			
			OutputStream TransOutStream = new FileOutputStream(Step1Out);
			Result schemaOut = new StreamResult(TransOutStream);
			
			Transformer transformer1 = factory.newTransformer(schemaXSLT);
			transformer1.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer1.transform(Schematron, schemaOut);
			
			log.info("Schematron Transformation 1 done");
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			
			File XSLFile2 = new File("src/main/resources/schematron/iso-xslt2/iso_abstract_expand.xsl");
			
			File Step2File = new File("src/main/resources/schematron/aktin-basism_STEP2.xsl");
        	
			schemaXSLT = new StreamSource(XSLFile2);
			Source Input2 = new StreamSource(Step1Out);
			
			TransOutStream = new FileOutputStream(Step2File);
			Result Step2Out = new StreamResult(TransOutStream);
			
			Transformer transformer2 = factory.newTransformer(schemaXSLT);
			transformer2.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer2.transform(Input2, Step2Out);
			
			log.info("Schematron Transformation 2 done");
			
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

			File XSLFile3 = new File("src/main/resources/schematron/iso-xslt2/iso_svrl_for_xslt2.xsl");
			
			File Step3File = new File("src/main/resources/schematron/aktin-basism.xsl");
        	
			schemaXSLT = new StreamSource(XSLFile3);
			Source Input3 = new StreamSource(Step2File);
			
			TransOutStream = new FileOutputStream(Step3File);
			Result Step3Out = new StreamResult(TransOutStream);
			
			Transformer transformer3 = factory.newTransformer(schemaXSLT);
			transformer3.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer3.transform(Input3, Step3Out);
			
			log.info("Schematron Transformation 3 done");
			
			
			// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
			
			
//			File CDAFile = new File("CDA Basismodul/basismodul-test-file.xml");
			File CDAFile = new File("CDA Basismodul/basismodul-beispiel-storyboard01_complete02.xml");
			File outFile2 = new File("CDA Basismodul/basismodul-TransformationResult.xml");
			
			schemaXSLT = new StreamSource(Step3File);
			Source CDA = new StreamSource(CDAFile);
			
			OutputStream CDAOutStream = new FileOutputStream(outFile2);
			Result CDAOut = new StreamResult(CDAOutStream);
			
			Transformer transformer4 = factory.newTransformer(schemaXSLT);
			transformer4.setOutputProperty(OutputKeys.INDENT, "yes");
			
			transformer4.transform(CDA, CDAOut);
			
			log.info("Basismodul Transformation (4) done");

		} catch (Exception e) {
			log.log(Level.SEVERE, "Transformation failed",e);
		} 
	}

}
