package org.aktin.cda;

import javax.xml.namespace.NamespaceContext;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
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
//	public static final String[] ID_TREE_XPATHS = new String[]{
//	"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension",//		"/ClinicalDocument/recordTarget/patientRole/id/@extension",
//	"/cda:ClinicalDocument/cda:setId/@extension",//		"/ClinicalDocument/setId@extension",
//	"/cda:ClinicalDocument/cda:versionNumber/@value",//		"/ClinicalDocument/versionNumber/@value",
//	};
//	
//	private XPathExpression[] idExpr;

	private Transformer domTransform;
	private XPath xpath;
	
	public CDAParser(){
		XPathFactory factory =  XPathFactory.newInstance();
		xpath = factory.newXPath();
		xpath.setNamespaceContext(namespaceContext);

		
//		idExpr = new XPathExpression[ID_TREE_XPATHS.length];
//		try{
//			for( int i=0; i<ID_TREE_XPATHS.length; i++ ){
//				idExpr[i] = xpath.compile(ID_TREE_XPATHS[i]);
//			}
//		}catch( XPathExpressionException e ){
//			throw new RuntimeException(e);
//		}
		try {
			domTransform = TransformerFactory.newInstance().newTransformer();
		} catch (TransformerConfigurationException | TransformerFactoryConfigurationError e) {
			throw new RuntimeException(e);
		}
	}
	
	public static final NamespaceContext namespaceContext = new NamespaceContextImpl();

	/**
	 * Find the template id for a given CDA document
	 * @param cda CDA document
	 * @return template id
	 * @throws XPathExpressionException XPath error
	 */
	public String extractTemplateId(Document cda) throws XPathExpressionException{
		XPathExpression xe = xpath.compile(CDAConstants.XPATH_CDA_TEMPLATE_ID);
		return (String)xe.evaluate(cda.getDocumentElement(), XPathConstants.STRING);
	}

	/**
	 * Find the patient id for a given CDA document
	 * @param cda CDA document
	 * @return two part patient id: root, extension
	 * @throws XPathExpressionException XPath error
	 */
	public String[] extractPatientId(Document cda) throws XPathExpressionException{
		XPathExpression xer = xpath.compile(CDAConstants.XPATH_CDA_PATIENT_ID_ROOT);
		XPathExpression xee = xpath.compile(CDAConstants.XPATH_CDA_PATIENT_ID_EXT);
		return new String[]{
				(String)xer.evaluate(cda.getDocumentElement(), XPathConstants.STRING),
				(String)xee.evaluate(cda.getDocumentElement(), XPathConstants.STRING)
		};
	}
	/**
	 * Find the encounter id for a given CDA document
	 * @param cda CDA document
	 * @return two part encounter id: root, extension
	 * @throws XPathExpressionException XPath error
	 */
	public String[] extractEncounterId(Document cda) throws XPathExpressionException{
		XPathExpression xer = xpath.compile(CDAConstants.XPATH_CDA_ENCOUNTER_ID_ROOT);
		XPathExpression xee = xpath.compile(CDAConstants.XPATH_CDA_ENCOUNTER_ID_EXT);
		return new String[]{
				(String)xer.evaluate(cda.getDocumentElement(), XPathConstants.STRING),
				(String)xee.evaluate(cda.getDocumentElement(), XPathConstants.STRING)
		};
	}

	/**
	 * Find the document id for a given CDA document. It should be globally
	 * unique for any different document, but should be the same for an 
	 * update/replacement of the same document.
	 * 
	 * @param cda CDA document
	 * @return template id
	 * @throws XPathExpressionException XPath error
	 */
	public String extractDocumentId(Document cda) throws XPathExpressionException{
		XPathExpression xe = xpath.compile(CDAConstants.XPATH_CDA_DOCUMENT_ID);
		return (String)xe.evaluate(cda.getDocumentElement(), XPathConstants.STRING);
	}

	// TODO add method to get templateID, remove extractIDs
	
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
//			if( true )throw new IllegalArgumentException();
//			Document doc = node.getOwnerDocument();
//			if( doc == null ){
				throw new TransformerException("DOMResult does not contain Document node");
//			}
//			return doc;
		}
	}
}
