package org.aktin.cda.etl.rest;

import java.util.ArrayList;
import java.util.List;

import javax.xml.XMLConstants;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;

import org.w3c.dom.Document;

/**
 * Simplified FHIR OperationOutcome resource.
 * <p>
 * Produces the following XML representation: 
 * <pre>{@code
 * <OperationOutcome xmlns="http://hl7.org/fhir">
 * 	<issue>
 * 		<severity value="warning"/>
 * 		<details value="Something unimportant failed"/>
 *  </issue>
 * </OperationOutcome>
 * }</pre>
 * @author Raphael
 *
 */
@XmlRootElement(name="OperationOutcome",namespace=SimplifiedOperationOutcome.FHIR_NAMESPACE)
public class SimplifiedOperationOutcome {

	public static final String FHIR_NAMESPACE="http://hl7.org/fhir";
	
	public static enum Severity{fatal, error, warning, information}
	
	public static class Issue{
		Severity severity;
		String details;
		
		public Issue(Severity severity, String details){
			this.severity = severity;
			this.details = details;
		}
	}
	
	private List<Issue> issues;
	
	public SimplifiedOperationOutcome(){
		issues = new ArrayList<>();
	}
	
	public void addIssue(Severity severity, String details){
		issues.add(new Issue(severity, details));
	}
	
	public Source generateXml(XMLOutputFactory factory, DocumentBuilder documentBuilder) throws XMLStreamException{
		Document doc = documentBuilder.newDocument();
		DOMResult res = new DOMResult(doc);
		XMLStreamWriter writer = factory.createXMLStreamWriter(res);
		
		writer.writeStartDocument();
		writer.writeStartElement(XMLConstants.DEFAULT_NS_PREFIX, "OperationOutcome", FHIR_NAMESPACE);
		writer.setDefaultNamespace(FHIR_NAMESPACE);
		writer.writeDefaultNamespace(FHIR_NAMESPACE);
		for( Issue issue : issues ){
			writer.writeStartElement("issue");
			writer.writeStartElement("severity");
			writer.writeAttribute("value", issue.severity.name());
			writer.writeEndElement();
			if( issue.details != null ){
				writer.writeStartElement("details");
				writer.writeAttribute("value", issue.details);
				writer.writeEndElement();
			}
			writer.writeEndElement();
		}
		writer.writeEndElement();
		writer.writeEndDocument();
		writer.close();
		DOMSource result = new DOMSource(doc);
		return result;
	}
}
