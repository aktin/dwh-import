package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.logging.Logger;

import javax.inject.Singleton;
import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

/**
 * Perform CDA validation according to SCHEMATRON rules.
 * <p>
 * This implementation is probably not thread-safe: A single {@link Transformer} 
 * instance is used for all calls to {@link #validate(Source)}.
 * <p>
 * This class can be used for dependency injection via CDI. In this case
 * this class behaves as a singleton, so only one instance of the class
 * is instantiated.
 * 
 * @author R.W.Majeed
 *
 */
@Singleton
public class Validator implements URIResolver, NamespaceContext {
	private static final Logger log = Logger.getLogger(Validator.class.getName());
	private TransformerFactory factory;
	private URL svrlTransformation;
	private static final String svrlSystemId = "urn:local:svrl";
	private Transformer transformer;
	
	// XPaths to interpret the svrl result
	private XPathFactory xfactory;
	private XPathExpression selectFailedAsserts;
	
	public Validator() throws IOException, TransformerConfigurationException{
		factory = TransformerFactory.newInstance("net.sf.saxon.TransformerFactoryImpl", null);
		// resolve internal URIs
		factory.setURIResolver(this);

		log.getClass(); // prevent unused warnings
		
		svrlTransformation = getClass().getResource("/schematron_svrl/aktin-basism.xsl");
		try( InputStream in = svrlTransformation.openStream() ){
			StreamSource xsl = new StreamSource(in);
			xsl.setSystemId(svrlSystemId);
			transformer = factory.newTransformer(xsl);
		}

		transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		
		// no need for Saxon??
		xfactory = XPathFactory.newInstance();
		try {
			XPath xpath = xfactory.newXPath();
			xpath.setNamespaceContext(this);
			selectFailedAsserts = xpath.compile("/svrl:schematron-output/svrl:failed-assert");
		} catch (XPathExpressionException e) {
			throw new IOException(e);
		}
	}
	
	/**
	 * Find failed assertations
	 * @param svrlDoc svrl result
	 * @return node list of failed-assertation elements
	 * @throws XPathExpressionException failure
	 */
	NodeList selectFailedAsserts(Document svrlDoc) throws XPathExpressionException{
		NodeList ret = (NodeList) selectFailedAsserts.evaluate(svrlDoc, XPathConstants.NODESET);
		return ret;
	}

	/**
	 * Validate a CDA document
	 * 
	 * @param cdaSource CDA document source to validate
	 * @return validation result
	 * @throws TransformerException if the transformation fails
	 * @throws XPathExpressionException if the transformation result could not be processed with XPath expressions to find validation errors
	 */
	public ValidationResult validate(Source cdaSource) throws TransformerException, XPathExpressionException{
		//Result result = new StreamResult(System.out);
		DOMResult dom = new DOMResult();
		transformer.transform(cdaSource, dom);
		ValidationResult result = new ValidationResult(this, (Document)dom.getNode());
		if( result.isValid() ){
			log.info("Document validation: VALID");
		}else{
			log.info("Document validation: FAILED");			
		}
		return result;
	}

	/**
	 * Resolves included URIs during transformation
	 */
	@Override
	public Source resolve(String href, String base) throws TransformerException {
		// TODO does this still work for recursive includes? e.g. a.xml includes a/b.xml includes b/c.xml 
		if( base.equals(svrlSystemId) ){
			try {
				URL url = new URL(svrlTransformation, href);
				return new StreamSource(url.openStream(), svrlSystemId);
			} catch (IOException e) {
				throw new TransformerException(e);
			}
		}else{
			throw new TransformerException("Unable to resolve '"+href+"' under: "+base);
		}
	}

	/**
	 * Resolves prefixes in XPath expressions
	 */
	@Override
	public String getNamespaceURI(String prefix) {
		switch( prefix ){
		case CDAConstants.SVRL_NS_PREFIX:
			return CDAConstants.SVRL_NS_URI;
		case "xsi":
			return XMLConstants.W3C_XML_SCHEMA_INSTANCE_NS_URI;
		case XMLConstants.XML_NS_PREFIX:
			return XMLConstants.XML_NS_URI;
		default:
			return XMLConstants.NULL_NS_URI;
		}
	}

	@Override
	public String getPrefix(String namespaceURI) {
		// not needed
		throw new UnsupportedOperationException();
	}

	@Override
	public Iterator<String> getPrefixes(String namespaceURI) {
		// not needed
		throw new UnsupportedOperationException();
	}
}
