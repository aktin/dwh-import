package org.aktin.cda.etl.fhir;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.activation.DataSource;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.dom.DOMResult;

import org.w3c.dom.Document;

/**
 * Simplified FHIR OperationOutcome resource. 
 * Including even the basic FHIR schemas would add dozens 
 * of transitive dependencies.
 * 
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
 * 
 * @author R.W.Majeed
 *
 */
public class SimplifiedOperationOutcome {

	public static final String FHIR_NAMESPACE="http://hl7.org/fhir";
	
	public static enum Severity{fatal, error, warning, information}
	public static enum IssueType{
		
		/** Informational note **/
		informational,
		/** An unexpected internal error has occurred. **/
		exception,
		/** Content not supported **/
		NotSupported("not-supported"),
		/** Some information was not or may not have been 
		 *  returned due to business rules, consent or 
		 *  privacy rules, or access permission constraints. This information may be accessible through alternate processes. 
		 **/
		suppressed;
		
		String value;
		IssueType(String codeValue){
			this.value = codeValue;
		}
		IssueType(){
			this.value = this.name();
		}
	}
	
	public static class Issue{
		Severity severity;
		String details;
		String diagnostics;
		IssueType code;
		public Issue(Severity severity, IssueType type, String details){
			this.severity = severity;
			this.details = details;
			this.code = type;
		}
		public Issue(Severity severity, String details){
			this.severity = severity;
			this.details = details;
			switch( severity ){
			case fatal:
			case error:
				this.code = IssueType.exception;
				break;
			case warning:
			case information:
			default:
				this.code = IssueType.informational;
				break;
			}
		}
		public static Issue diagnosticInfo(String message){
			Issue i = new Issue(Severity.information, IssueType.informational, null);
			i.diagnostics = "all ok";
			return i;
		}
	}
	
	private List<Issue> issues;
	
	public SimplifiedOperationOutcome(){
		issues = new ArrayList<>();
	}

	public int getIssueCount(){
		return issues.size();
	}
	/**
	 * Retrieve detailed counts for debugging levels in the following order: errors, warnings, informational
	 * @return array containing detailed counts for the outcome resource
	 */
	public int[] getDetailedCounts() {
		int[] counts = new int[3];
		for( Issue issue : issues ) {
			switch( issue.severity ){
			case error:
			case fatal:
				counts[0]++;
				break;
			case warning:
				counts[1]++;
				break;
			case information:
				counts[2]++;
				break;
			default:
			}
		}
		return counts;
	}
	/**
	 * Add an issue to the response
	 * @param severity issue severity
	 * @param details detail message
	 */
	public void addIssue(Severity severity, String details){
		issues.add(new Issue(severity, details));
	}

	public void addIssue(Severity severity, IssueType type, String details){
		issues.add(new Issue(severity, details));
	}

	private void writeIssue(XMLStreamWriter writer, Issue issue) throws XMLStreamException{
		writer.writeStartElement("issue");
		// severity
		writer.writeStartElement("severity");
		writer.writeAttribute("value", issue.severity.name());
		writer.writeEndElement();
		// code
		writer.writeStartElement("code");
		writer.writeAttribute("value", issue.code.value);
		writer.writeEndElement();
		
		if( issue.details != null ){
			writer.writeStartElement("details");
			writer.writeAttribute("value", issue.details);
			writer.writeEndElement();
		}
		writer.writeEndElement();	
	}

	/**
	 * Remove issues below a certain severity.
	 * E.g. if the limit is {@code error} then warning and information messages are removed.
	 * Limit of {@code information} has no effect, since no messages are below.}
	 * To remove all issues, use {@link #removeAllIssues()}
	 * @param severity. {@code null}
	 */
	public void removeIssuesBelowSeverity(Severity limit) {
		Iterator<Issue> i = issues.iterator();
		Set<Severity> forRemoval = new HashSet<>();
		switch( limit ) {
		case fatal:
		case error:
			forRemoval.add(Severity.warning);
		case warning:
			forRemoval.add(Severity.information);
		case information:
		default:
		}
		while( i.hasNext() ) {
			Issue e = i.next();
			if( forRemoval.contains(e.severity) ) {
				i.remove();
			}
		}
	}
	/**
	 * Remove all reported issues from the list.
	 */
	public void removeAllIssues() {
		issues.clear();
	}
	/**
	 * Generate the XML representation of the response
	 * 
	 * @param factory XML factory
	 * @param documentBuilder XML document builder
	 * @return XML source
	 * @throws XMLStreamException any XML error
	 */
	public DataSource generateXml(XMLOutputFactory factory, DocumentBuilder documentBuilder) throws XMLStreamException{
		Document doc = documentBuilder.newDocument();
		DOMResult res = new DOMResult(doc);
		XMLStreamWriter writer = factory.createXMLStreamWriter(res);
		
		writer.writeStartDocument();
		writer.writeStartElement(XMLConstants.DEFAULT_NS_PREFIX, "OperationOutcome", FHIR_NAMESPACE);
//		writer.setDefaultNamespace(FHIR_NAMESPACE);
//		writer.writeDefaultNamespace(FHIR_NAMESPACE);
		for( Issue issue : issues ){
			writeIssue(writer, issue);
		}
		// prevent empty ObservationOutcome. Write success info for empty issues
		if( issues.isEmpty() ){
			writeIssue(writer, Issue.diagnosticInfo("all ok"));
		}
		writer.writeEndElement();
		writer.writeEndDocument();
		writer.close();
		return new FhirDomSource(doc);
	}

	public String toString(){
		StringBuilder b = new StringBuilder();
		for( Issue issue : issues ){
			if( b.length() != 0 ){
				b.append('\n');
			}
			b.append(issue.severity.name()).append(": ");
			b.append(issue.details);
		}
		return b.toString();
	}
	public static SimplifiedOperationOutcome create(Severity severity, String message){
		SimplifiedOperationOutcome o = new SimplifiedOperationOutcome();
		o.addIssue(severity, message);
		return o;
	}
	public static SimplifiedOperationOutcome create(Severity severity, IssueType type, String message){
		SimplifiedOperationOutcome o = new SimplifiedOperationOutcome();
		o.addIssue(severity, message);
		return o;
	}
	public static SimplifiedOperationOutcome error(String message){
		return create(Severity.error, message);
	}
	public static SimplifiedOperationOutcome error(Throwable error){
		StringWriter w = new StringWriter();
		PrintWriter p = new PrintWriter(w);
		error.printStackTrace(p);
		return error(w.toString());
	}
	public static SimplifiedOperationOutcome info(String message){
		return create(Severity.information, message);
	}
}
