package org.aktin.cda.etl.fhir;

import java.net.HttpURLConnection;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceProvider;
import javax.xml.ws.handler.MessageContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.aktin.cda.CDAConstants;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.ValidationResult;
import org.aktin.cda.Validator;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;


/**
 * Implements FHIR Binary interface to receive text/xml CDA documents
 * @author R.W.Majeed
 *
 */
@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestService implements Provider<Source>{
	private static final Logger log = Logger.getLogger(RestService.class.getName());
	private Validator validator;
	private XMLOutputFactory outputFactory;
	private DocumentBuilder documentBuilder;
	private CDAProcessor processor;

	/**
	 * HTTP Error code 422, indicating that the submitted entity could not be processed due to semantical reasons, e.g. valid XML but Schematron validation failed.
	 * Other codes can be used from {@link HttpURLConnection}.
	 */
	public static final int HTTP_UNPROCESSABLE_ENTITY = 422;
	/**
	 * Returned if validation passed
	 */
	public static final int HTTP_OK = HttpURLConnection.HTTP_OK;
	/**
	 * Returned if the request URI contains illegal
	 */
	public static final int HTTP_BAD_REQUEST = HttpURLConnection.HTTP_BAD_REQUEST;
	/**
	 * Returned if the Content-type is not text/xml or if the entity could not be parsed as XML
	 */
	public static final int HTTP_UNSUPPORTED_TYPE = HttpURLConnection.HTTP_UNSUPPORTED_TYPE;
	
	
	public RestService(Validator validator, CDAProcessor processor) throws ParserConfigurationException{
		this.validator = validator;
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		this.processor = processor;
	}
	
	@Resource
    private WebServiceContext context;

	/**
	 * Process RESTful/HTTP request
	 */
	@Override
	public Source invoke(Source request) {
		MessageContext mc = context.getMessageContext();
		String path = (String)mc.get(MessageContext.PATH_INFO);
		String query = (String)mc.get(MessageContext.QUERY_STRING);
		String httpMethod = (String)mc.get(MessageContext.HTTP_REQUEST_METHOD);
		
		
		// only PUT and POST supported
		if( !httpMethod.equals("PUT") && !httpMethod.equals("POST") ){
			// method not allowed
			mc.put(MessageContext.HTTP_RESPONSE_CODE, HttpURLConnection.HTTP_BAD_METHOD);
			return null;
		}
		log.info("REST request: "+httpMethod+" "+(path!=null?path:"")+(query!=null?"?"+query:""));

		ValidationResult vr = null;
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();
		int responseStatus;

		// extract patient id, encounter id, document id
		String[] ids = new String[CDAConstants.ID_TREE_XPATHS.length];

		try {
			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			synchronized( validator ){
				vr = validator.validate(request);
			}
			if( vr.isValid() ){
				responseStatus = HttpURLConnection.HTTP_OK;
				log.info("Document validation: VALID");
				
				// extract IDs
				XPathFactory factory =  XPathFactory.newInstance();
				XPath xpath = factory.newXPath();
				for( int i=0; i<CDAConstants.ID_TREE_XPATHS.length; i++ ){
					ids[i] = xpath.evaluate(CDAConstants.ID_TREE_XPATHS[i], request);
				}
				log.info(" - patientId="+ids[1]);
				log.info(" - setId="+ids[1]);
				log.info(" - vesionId="+ids[1]);
			}else{
				responseStatus = HTTP_UNPROCESSABLE_ENTITY; // Unprocessable entity
				vr.forEachErrorMessage(s -> outcome.addIssue(Severity.error, s));
				log.info("Document validation: FAILED");
			}
		} catch (XPathExpressionException e) {
			responseStatus = HttpURLConnection.HTTP_INTERNAL_ERROR;
			log.log(Level.FINE, "XPath error", e);
		} catch (TransformerException e) {
			responseStatus = HTTP_UNSUPPORTED_TYPE;
			log.log(Level.FINE, "Transformation failed", e);
		}
		
		if( path != null && path.equals("_validate") ){
			// only validation, no submission
			
		}else{
			// check arguments/valid id
			// otherwise return HTTP_BAD_REQUEST
			if( processor != null ){
				// process document
				processor.process(ids[0], ids[1], ids[2], request);
			}
		}
		// HTTP status response
		mc.put(MessageContext.HTTP_RESPONSE_CODE, responseStatus);
		
		try {
			return outcome.generateXml(outputFactory, documentBuilder);
		} catch (XMLStreamException e) {
			// internal error
			mc.put(MessageContext.HTTP_RESPONSE_CODE, HttpURLConnection.HTTP_INTERNAL_ERROR);
			return null; // TODO check whether returning null is ok
		}
	}
}
