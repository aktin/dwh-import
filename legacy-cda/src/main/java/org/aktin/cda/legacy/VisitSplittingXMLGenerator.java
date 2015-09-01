package org.aktin.cda.legacy;

import java.util.function.Consumer;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.dom.DOMResult;

import org.w3c.dom.Document;

import de.sekmi.histream.ObservationException;
import de.sekmi.histream.ext.Patient;
import de.sekmi.histream.ext.Visit;
import de.sekmi.histream.io.GroupedXMLWriter;

public class VisitSplittingXMLGenerator extends GroupedXMLWriter{
	private XMLOutputFactory factory;
	private DOMResult result;
	private Patient patient;
	private Consumer<Document> visitConsumer;
	private DocumentBuilder builder;
	
	protected VisitSplittingXMLGenerator(Consumer<Document> visitConsumer) throws XMLStreamException {
		super();
		factory = XMLOutputFactory.newInstance();
		// enable repairing namespaces to remove duplicate namespace declarations by JAXB marshal
		factory.setProperty(XMLOutputFactory.IS_REPAIRING_NAMESPACES, Boolean.TRUE);
		this.visitConsumer = visitConsumer;
		try {
			builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			throw new XMLStreamException(e);
		}
	}

	@Override
	protected void beginStream(){
		// do nothing, only write for each visit
	}

	@Override
	protected final void beginPatient(Patient patient){
		// remember patient
		this.patient = patient;
		// do nothing, only write for each visit
	}
	
	
	@Override
	protected final void beginEncounter(Visit visit)throws ObservationException{
		result = new DOMResult(builder.newDocument());
		try {
			this.writer = factory.createXMLStreamWriter(result);
		} catch (XMLStreamException e) {
			throw new ObservationException(e);
		}
		super.beginStream();
		super.beginPatient(patient);
		super.beginEncounter(visit);
	}
	
	@Override
	protected final void endEncounter(Visit visit)throws ObservationException{
		super.endEncounter(visit);
		super.endPatient(patient);
		super.endStream();
		try {
//			writer.writeEndDocument();
			writer.close();
		} catch (XMLStreamException e) {
			throw new ObservationException(e);
		} // will call endEncounter, endPatient and also close the writer
		writer = null;
		visitConsumer.accept((Document)result.getNode());
	}
	
	@Override
	protected final void endPatient(Patient patient){
		// do nothing
	}
	
	@Override
	protected void endStream(){
		// do nothing
	}
	
	
}
