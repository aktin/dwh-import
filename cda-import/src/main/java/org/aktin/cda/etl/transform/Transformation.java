package org.aktin.cda.etl.transform;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.xml.transform.Result;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.aktin.cda.etl.transform.fun.CalculateEncounterHash;
import org.aktin.cda.etl.transform.fun.CalculatePatientHash;
import org.aktin.cda.etl.transform.fun.CalculateSourceId;
import org.w3c.dom.Document;

import net.sf.saxon.Configuration;
import net.sf.saxon.TransformerFactoryImpl;

public class Transformation {
	private String moduleId;
	private String templateId;
	
	private TransformerFactory transformerFactory;
	private Templates transformerTemplates;

	/**
	 * Construct a CDA template to EAV transformation
	 * 
	 * @param moduleId module id
	 * @param templateId template id
	 * @param xslt XSLT document
	 * @throws TransformerFactoryConfigurationError if the transformer factory failed to initialize
	 * @throws TransformerConfigurationException 
	 */
	public Transformation(String moduleId, String templateId, Document xslt)throws TransformerFactoryConfigurationError, TransformerConfigurationException{
		this.moduleId = moduleId;
		this.templateId = templateId;
		
		// create transformer
		transformerFactory = TransformerFactory.newInstance();
		// enable custom XPath functions
		injectCustomFunction(transformerFactory, moduleId);

		// compile XSLT, no need to store the XSLT DOM anymore
		transformerTemplates = transformerFactory.newTemplates(new DOMSource(xslt));
	}

	public String getTemplateId(){
		return templateId;
	}
	public String getModuleId(){
		return moduleId;
	}

	private void injectCustomFunction(TransformerFactory factory, String moduleId){
		if( !(factory instanceof TransformerFactoryImpl) ){
			throw new TransformerFactoryConfigurationError("Unable to inject functions into non-Saxon transformer");
		}
		Configuration config = ((TransformerFactoryImpl)factory).getConfiguration();
		config.registerExtensionFunction(new CalculatePatientHash());
		config.registerExtensionFunction(new CalculateEncounterHash());
		config.registerExtensionFunction(new CalculateSourceId());
		// TODO don't need moduleId and factory?
	}

	public Transformer newTransformer() throws TransformerConfigurationException{
		return transformerTemplates.newTransformer();
	}
	
	public void transformToEAV(Document cda, Result result) throws TransformerException{
		newTransformer().transform(new DOMSource(cda), result);		
	}
	/**
 	 * transform CDA document to EAV XML in temporary file
	 * @param document CDA document
	 * @return temporary file containing the EAV XML
	 * @throws IOException error creating temporary file
	 * @throws TransformerException transformation error
	 */
	public Path transformToEAV(Document document) throws IOException, TransformerException{
		Path tempEAV = Files.createTempFile("eav", null);

		StreamResult result = new StreamResult(tempEAV.toFile());
		try {
			transformToEAV(document, result);
		} catch (TransformerException e) {
			// remove temporary file
			try {
				Files.delete(tempEAV);
			} catch (IOException e1) {
				e.addSuppressed(e1);
			}
			throw e;
		}
		return tempEAV;
	}

}
