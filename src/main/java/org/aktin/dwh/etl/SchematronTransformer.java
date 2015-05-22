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
	
	// if FORCE_PARSE is true then 
	static final boolean FORCE_PARSE = false; 
	
	TransformerFactory factory;
	
	public SchematronTransformer () {
		factory = TransformerFactory.newInstance();
		
		
	}
	
	private static final Logger log = Logger.getLogger(SchematronTransformer.class.getName());
	
	public static void main(String[] args) {
		File Step3File = new File("out/aktin-basism.xsl");
		// check whether schematron is already parsed (whether file exist)
		
		
		Transform p = new Transform();
		
		p.transform();
		
	}
	
}