package org.aktin.cda.etl.fhir;

import java.net.URI;
import java.util.Collection;
import java.util.Collections;
import java.util.function.Function;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;

import org.aktin.cda.CDASummary;
import org.w3c.dom.Document;

/**
 * Simplified seach bundle
 * 
 * @author R.W.Majeed
 *
 */
public class SearchBundle {

	public static final String FHIR_NAMESPACE="http://hl7.org/fhir";
	
	private Collection<CDASummary> results;
	private Function<String, URI> fullUriProvider;
	
	
	/**
	 * Creates an empty search bundle
	 */
	public SearchBundle(){
	}
	
	/**
	 * Creates a search bundle containing a single element
	 * @param single element
	 * @param idToUri mapping
	 */
	public static SearchBundle single(CDASummary single, Function<String,URI> idToUri){
		return new SearchBundle(Collections.singleton(single), idToUri);
	}
	public SearchBundle(Collection<CDASummary> results, Function<String,URI> idToUriMapping){
		this.results = results;
		this.fullUriProvider = idToUriMapping;
	}
	private void writeElementAttribute(XMLStreamWriter w, String el, Object val) throws XMLStreamException{
		if( val == null )return;
		w.writeStartElement(el);
		w.writeAttribute("value", val.toString());
		w.writeEndElement();
	}
	/**
	 * Generate the XML representation of the response
	 * 
	 * @param factory XML factory
	 * @param documentBuilder XML document builder
	 * @return XML source
	 * @throws XMLStreamException any XML error
	 */
	public Source build(XMLOutputFactory factory, DocumentBuilder documentBuilder) throws XMLStreamException{
		Document doc = documentBuilder.newDocument();
		DOMResult res = new DOMResult(doc);
		XMLStreamWriter writer = factory.createXMLStreamWriter(res);
		
		writer.writeStartDocument();
		writer.writeStartElement(XMLConstants.DEFAULT_NS_PREFIX, "Bundle", FHIR_NAMESPACE);
//		writer.setDefaultNamespace(FHIR_NAMESPACE);
//		writer.writeDefaultNamespace(FHIR_NAMESPACE);
		// type search-set
		writer.writeStartElement("type");
		writer.writeAttribute("type","searchset");
		writer.writeEndElement();
		if( results == null ){
			// no results
			writeElementAttribute(writer, "total", "0");
		}else{
			// count
			writeElementAttribute(writer, "total", Integer.toString(results.size()));
			for( CDASummary entry : results ){
				writer.writeStartElement("entry");
				// URI
				writeElementAttribute(writer,"fullUrl",fullUriProvider.apply(entry.getDocumentId()));
	
				// resource
				writer.writeStartElement("Resource");
				// id
				writeElementAttribute(writer,"id",entry.getDocumentId());
				// versionId
				writeElementAttribute(writer,"versionId",entry.getVersion());
				// lastUpdated
				// TODO format date correctly according to FHIR specs
				writeElementAttribute(writer,"lastUpdated",entry.getLastModified());
				writer.writeEndElement();
				
				writer.writeEndElement();
			}
		}
		writer.writeEndElement();
		writer.writeEndDocument();
		writer.close();
		DOMSource result = new DOMSource(doc);
		return result;
	}
	
	public static SearchBundle createEmpty(){
		return new SearchBundle();
	}
}
