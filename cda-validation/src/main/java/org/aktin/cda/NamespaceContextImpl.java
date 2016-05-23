package org.aktin.cda;

import java.util.Arrays;
import java.util.Iterator;

import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;

public class NamespaceContextImpl implements NamespaceContext {

	@Override
	public Iterator<?> getPrefixes(String namespaceURI) {
		String prefix = getPrefix(namespaceURI);
		if( prefix == null )return Arrays.asList().iterator();
		else if( namespaceURI.equals(CDAConstants.CDA_NS_URI) ){
			return Arrays.asList(prefix,CDAConstants.CDA_NS_PREFIX).iterator();
		}else return Arrays.asList(prefix).iterator();
	}
	
	@Override
	public String getPrefix(String namespaceURI) {
		switch( namespaceURI ){
		case CDAConstants.CDA_NS_URI:
			return XMLConstants.DEFAULT_NS_PREFIX;
		case XMLConstants.W3C_XML_SCHEMA_INSTANCE_NS_URI:
			return "xsi";
		case XMLConstants.XML_NS_URI:
			return XMLConstants.XML_NS_PREFIX;
		case XMLConstants.XMLNS_ATTRIBUTE_NS_URI:
			return XMLConstants.XMLNS_ATTRIBUTE;
		case CDAConstants.EAV_NS_URI:
			return CDAConstants.EAV_NS_PREFIX;
		case CDAConstants.XSL_NS_URI:
			return CDAConstants.XSL_NS_PREFIX;
		}
		return null;
	}
	
	@Override
	public String getNamespaceURI(String prefix) {
		switch( prefix ){
		case XMLConstants.DEFAULT_NS_PREFIX:
		case CDAConstants.CDA_NS_PREFIX:
			return CDAConstants.CDA_NS_URI;
		case CDAConstants.EAV_NS_PREFIX:
			return CDAConstants.EAV_NS_URI;
		case "xsi":
			return XMLConstants.W3C_XML_SCHEMA_INSTANCE_NS_URI;
		case CDAConstants.XSL_NS_PREFIX:
			return CDAConstants.XSL_NS_URI;
		case XMLConstants.XML_NS_PREFIX:
			return XMLConstants.XML_NS_URI;
		case XMLConstants.XMLNS_ATTRIBUTE:
			return XMLConstants.XMLNS_ATTRIBUTE_NS_URI;
		}
		return XMLConstants.NULL_NS_URI;
	}
}
