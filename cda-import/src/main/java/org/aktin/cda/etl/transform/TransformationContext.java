package org.aktin.cda.etl.transform;

import java.util.Iterator;
import java.util.Objects;

import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;

public class TransformationContext implements NamespaceContext {

	@Override
	public String getNamespaceURI(String prefix) {
		Objects.requireNonNull(prefix);
		if ("xsl".equals(prefix)) return "http://www.w3.org/1999/XSL/Transform";
		else if ("eav".equals(prefix)) return "http://sekmi.de/histream/ns/eav-data";
		else if ("cda".equals(prefix)) return "urn:hl7-org:v3";
		else if ("xml".equals(prefix)) return XMLConstants.XML_NS_URI;
		return XMLConstants.NULL_NS_URI;
	}

	@Override
	public String getPrefix(String namespaceURI) {
		throw new UnsupportedOperationException();
	}

	@Override
	public Iterator<?> getPrefixes(String namespaceURI) {
		throw new UnsupportedOperationException();
	}

}
