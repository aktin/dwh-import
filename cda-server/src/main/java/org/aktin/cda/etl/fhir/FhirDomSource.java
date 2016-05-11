package org.aktin.cda.etl.fhir;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.activation.DataSource;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

public class FhirDomSource implements DataSource {
	private Document doc;
	
	public FhirDomSource(Document doc){
		this.doc = doc;
	}
	@Override
	public String getContentType() {
		return FhirConstants.MEDIA_TYPE_XML_FHIR;
	}

	@Override
	public InputStream getInputStream() throws IOException {
		// TODO is there way to use XMLStreamReader to construct an on demand InputStream?
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		Source xmlSource = new DOMSource(doc);
		Result outputTarget = new StreamResult(outputStream);
		try {
			TransformerFactory.newInstance().newTransformer().transform(xmlSource, outputTarget);
		} catch (TransformerException | TransformerFactoryConfigurationError e) {
			throw new IOException("Unable transform XML to byte array", e);
		}
		return new ByteArrayInputStream(outputStream.toByteArray());
	}

	@Override
	public String getName() {
		return doc.getDocumentElement().getTagName();
	}

	@Override
	public OutputStream getOutputStream() throws IOException {
		throw new UnsupportedOperationException();
	}

}
