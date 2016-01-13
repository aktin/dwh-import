package org.aktin.cda;

import java.util.Arrays;
import java.util.Iterator;

import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

/**
 * Parses CDA documents into DOM tree nodes and extracts IDs from the CDA.
 * <p>
 * This class is not thread safe, because it uses {@link XPathExpression} and {@link Transformer}. 
 * Make sure the methods are not called by multiple threads at the same time.
 * 
 * @author R.W.Majeed
 *
 */
public class CDAParser {
	/**
	 * XPaths to select IDs in ascending order of change probability.
	 * <p>
	 * First element will select the patient id, which will not change even
	 * for multiple visits.
	 * <p>
	 * Second will be the the visit id, which will not change with document updates
	 * (sometimes also called the set id)
	 * <p>
	 * Third the document version which changes with every submission of the same
	 * document. This can also be a time stamp.
	 */
	public static final String[] ID_TREE_XPATHS = new String[]{
	"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension",//		"/ClinicalDocument/recordTarget/patientRole/id/@extension",
	"/cda:ClinicalDocument/cda:setId/@extension",//		"/ClinicalDocument/setId@extension",
	"/cda:ClinicalDocument/cda:versionNumber/@value",//		"/ClinicalDocument/versionNumber/@value",
	};
	
	private XPathExpression[] idExpr;
	private Transformer domTransform;
	
	public CDAParser(){
		XPathFactory factory =  XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		xpath.setNamespaceContext(namespaceContext);

		idExpr = new XPathExpression[ID_TREE_XPATHS.length];
		try{
			for( int i=0; i<ID_TREE_XPATHS.length; i++ ){
				idExpr[i] = xpath.compile(ID_TREE_XPATHS[i]);
			}
		}catch( XPathExpressionException e ){
			throw new RuntimeException(e);
		}
		try {
			domTransform = TransformerFactory.newInstance().newTransformer();
		} catch (TransformerConfigurationException | TransformerFactoryConfigurationError e) {
			throw new RuntimeException(e);
		}
	}
	
	public static final NamespaceContext namespaceContext = new NamespaceContext() {
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
			}
			return null;
		}
		
		@Override
		public String getNamespaceURI(String prefix) {
			switch( prefix ){
			case XMLConstants.DEFAULT_NS_PREFIX:
			case CDAConstants.CDA_NS_PREFIX:
				return CDAConstants.CDA_NS_URI;
			case "xsi":
				return XMLConstants.W3C_XML_SCHEMA_INSTANCE_NS_URI;
			case XMLConstants.XML_NS_PREFIX:
				return XMLConstants.XML_NS_URI;
			case XMLConstants.XMLNS_ATTRIBUTE:
				return XMLConstants.XMLNS_ATTRIBUTE_NS_URI;
			}
			return XMLConstants.NULL_NS_URI;
		}
	};

	/**
	 * Extract IDs from a CDA document. See {@link #ID_TREE_XPATHS}
	 * @param cda CDA document
	 * @return hierarchical IDs
	 * @throws XPathExpressionException for XPath errors during ID extraction
	 * @see #ID_TREE_XPATHS
	 */
	public final String[] extractIDs(Node cda) throws XPathExpressionException{
		// extract IDs

		String[] ids = new String[idExpr.length];
		// TODO needs DOM or sax.InputSource. This does not work with other Source objects
		for( int i=0; i<idExpr.length; i++ ){
			ids[i] = idExpr[i].evaluate(cda);
		}
		return ids;
	}

	/**
	 * Build a DOM node from the XML source.
	 * 
	 * @param source XML source
	 * @return document node
	 * @throws TransformerException if transformation failed
	 */
	public Document buildDOM(Source source) throws TransformerException{
		DOMResult result = new DOMResult();
		domTransform.transform(source, result);
		Node node = result.getNode();
		if( node instanceof Document ){
			return (Document)node;
		}else{
			if( true )throw new IllegalArgumentException();
			Document doc = node.getOwnerDocument();
			if( doc == null ){
				throw new TransformerException("DOMResult does not contain Document node");
			}
			return doc;
		}
	}
}
