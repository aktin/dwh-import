package org.aktin.cda.etl.fhir;

import javax.activation.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

public class XmlResource {
	protected XMLOutputFactory outputFactory;
	protected DocumentBuilder documentBuilder;
	private Transformer domTransform;

	public XmlResource() throws ParserConfigurationException{
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		try {
			domTransform = TransformerFactory.newInstance().newTransformer();
		} catch (TransformerConfigurationException | TransformerFactoryConfigurationError e) {
			throw new RuntimeException(e);
		}		
	}
	protected Document buildDOM(Source source) throws TransformerException{
		DOMResult result = new DOMResult();
		domTransform.transform(source, result);
		Node node = result.getNode();
		if( node instanceof Document ){
			return (Document)node;
		}else{
			throw new TransformerException("DOMResult does not contain Document node");
		}
	}
	protected DataSource outcomeToXML(SimplifiedOperationOutcome o) throws XMLStreamException{
		return o.generateXml(outputFactory, documentBuilder);
	}

}
