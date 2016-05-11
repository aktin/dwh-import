package org.aktin.cda.etl.transform;

import java.io.IOException;
import java.io.InputStream;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

import net.sf.saxon.Configuration;
import net.sf.saxon.TransformerFactoryImpl;

public class Transformation {
	private String moduleId;
	private String templateId;
	
	private Document xslt;
	private XMLInputFactory inputFactory;

	/**
	 * 
	 * @param factory factory
	 * @param moduleId module id
	 * @param templateId template id
	 * @param xslt XSLT document
	 * @throws TransformerFactoryConfigurationError if the transformer factory failed to initialize
	 */
	public Transformation(TransformationFactory factory, String moduleId, String templateId, Document xslt)throws TransformerFactoryConfigurationError{
		this.moduleId = moduleId;
		this.templateId = templateId;

		this.xslt = xslt;
		
		// create transformer
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		// enable custom XPath functions
		injectCustomFunction(transformerFactory, moduleId);

		// XML input factory
		inputFactory = XMLInputFactory.newInstance();
	}


	private void injectCustomFunction(TransformerFactory factory, String moduleId){
		if( !(factory instanceof TransformerFactoryImpl) ){
			throw new TransformerFactoryConfigurationError("Unable to inject functions into non-Saxon transformer");
		}
		Configuration config = ((TransformerFactoryImpl)factory).getConfiguration();
		config.registerExtensionFunction(new CalculateEncounterHash());
		// XXX TODO config.registerExtensionFunction(function);
	}

}
