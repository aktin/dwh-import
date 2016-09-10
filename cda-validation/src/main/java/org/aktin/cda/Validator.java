package org.aktin.cda;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Singleton;
import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * Perform CDA validation according to SCHEMATRON rules.
 * <p>
 * This implementation is probably not thread-safe: A single {@link Transformer} 
 * instance is used for all calls to {@link #validate(Source, String)} with the same template id.
 * <p>
 * This class can be used for dependency injection via CDI. In this case
 * this class behaves as a singleton, so only one instance of the class
 * is instantiated.
 * 
 * @author R.W.Majeed
 *
 */
@Singleton
public class Validator implements NamespaceContext{
	private static final Logger log = Logger.getLogger(Validator.class.getName());
	// XPaths to interpret the svrl result
	private XPathFactory xfactory;
	
	private XPathExpression selectFailedAsserts;
	// TODO warnings are same as asserts with a different attribute
	private Map<String, SingleTemplateValidator> templateValidators;
	private SchemaValidator schemaValidator;
	
	public Validator() throws IOException, TransformerConfigurationException, SAXException{
		// create XSD-schema validator
		schemaValidator = new SchemaValidator();

		// initialise schematron validator
		templateValidators = new HashMap<>();
		// no need for Saxon??
		xfactory = XPathFactory.newInstance();
		try {
			XPath xpath = xfactory.newXPath();
			xpath.setNamespaceContext(this);
			// errors
			selectFailedAsserts = xpath.compile("/svrl:schematron-output/svrl:failed-assert");
		} catch (XPathExpressionException e) {
			throw new IOException(e);
		}
		addTemplateValidator("1.2.276.0.76.10.1015", getClass().getResource("/schematron_svrl/aktin-basism.xsl"));
		addTemplateValidator("1.2.276.0.76.10.1019", getClass().getResource("/schematron_svrl/aktin-basism20152b.xsl"));

	}

	private void addTemplateValidator(String templateId, URL svrlTransformation) throws TransformerConfigurationException, IOException{
		templateValidators.put(templateId, new SingleTemplateValidator(svrlTransformation));
	}
	
	/**
	 * Find failed assertations
	 * @param svrlDoc svrl result
	 * @return node list of failed-assertation elements
	 * @throws XPathExpressionException failure
	 */
	int reportFailedAsserts(Document svrlDoc, ValidationErrorHandler handler) throws XPathExpressionException{
		NodeList ret = (NodeList) selectFailedAsserts.evaluate(svrlDoc, XPathConstants.NODESET);
		int errorCount = 0;
		for( int i=0; i<ret.getLength(); i++ ){
			Element e = (Element)ret.item(i);
			String role = e.getAttribute("role");
			Node text = e.getFirstChild();
			String messageText;
			if( text != null && text.getLocalName().equals("text") && text.getNamespaceURI().equals(CDAConstants.SVRL_NS_URI) ){
				messageText = text.getTextContent();
			}else{
				// fall back to use the whole content of the failed-assert
				messageText = e.getTextContent();
			}

			switch( role ){
			case "error":
				errorCount ++;
				handler.error(messageText, null);
				break;
			default:
				log.warning("Unexpected failed-assert/@role="+role);
				// fall through to warning
			case "warning":
				handler.error(messageText, null);
			}
		}
		return errorCount;
	}

	/**
	 * Validate a CDA document
	 * 
	 * @param cdaSource CDA document source to validate
	 * @param templateId template id for the validation
	 * @return validation result
	 * @throws TransformerException if the transformation fails
	 * @throws XPathExpressionException if the transformation result could not be processed with XPath expressions to find validation errors
	 * @throws UnsupportedTemplateException given template id not supported
	 */
	public boolean validate(Node cdaSource, String templateId, ValidationErrorHandler handler) throws TransformerException, XPathExpressionException, UnsupportedTemplateException{
		// perform schema validation first
		boolean isValid = schemaValidator.validate(new DOMSource(cdaSource), handler);
		//Result result = new StreamResult(System.out);
		SingleTemplateValidator validator = templateValidators.get(templateId);
		if( validator == null ){
			// no validator for the specified template
			throw new UnsupportedTemplateException(templateId);
		}
		Document svrlOut = validator.validate(new DOMSource(cdaSource));
		int errorCount = reportFailedAsserts(svrlOut, handler);
		if( isValid && errorCount == 0 ){
			log.info("Document validation: VALID");
			return true;
		}else{
			StringBuilder info = new StringBuilder();
			info.append("Document validation: FAILED (");
			if( isValid == false ){
				info.append("xsd error");
			}
			if( errorCount != 0 ){
				if( isValid == false ){
					info.append(" + ");
				}
				info.append(errorCount + " schematron errors");
			}
			info.append(')');
			log.info(info.toString());
			return false;
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

	/**
	 * Validate CDA documents and print the result to STDOUT or STDERR on failure.
	 * <p>
	 * 	The exit code will indicate the number of failed documents (between 0 and 
	 *  the number of command line arguments.
	 * </p>
	 * Call with {@code java -classpath "cda-validation/target/classes;histream-core/target/classes" org.aktin.cda.Validator filename [... more files]}
	 * @param args file name arguments
	 * @throws Exception error
	 */
	public static void main(String args[]) throws Exception{
		// TODO use file name from commmand line
		if( args.length != 1 ){
			System.err.println("Please specify exactly one CDA file path");
			return;
		}
		CDAParser parser = new CDAParser();
		Validator v = new Validator();
		ValidationErrorPrinter e = new ValidationErrorPrinter();
		int failure_count = 0;
		for( String filename : args )
		try( InputStream in = new FileInputStream(filename)){
			Document dom = parser.buildDOM(new StreamSource(in));
			e.setSystemId(filename);
			String templateId = parser.extractTemplateId(dom);
			boolean isValid = v.validate(dom, templateId, e);
			if( isValid ){
				System.out.println("Result for "+filename+": validation passed");
			}else{
				System.err.println("Result for "+filename+": validation failed");
				failure_count ++;
			}
		}

		System.exit(failure_count);
	}

}
