package org.aktin.cda.etl.fhir;

import java.net.HttpURLConnection;
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
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.ValidationResult;
import org.aktin.cda.etl.demo.ValidationService;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;


/**
 * Implements FHIR Binary interface to receive text/xml CDA documents
 * @author Raphael
 *
 */
@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestService implements Provider<Source>{
	private static final Logger log = Logger.getLogger(RestService.class.getName());
	private ValidationService validator;
	private XMLOutputFactory outputFactory;
	private DocumentBuilder documentBuilder;
	
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
	
	
	public RestService(ValidationService validator) throws ParserConfigurationException{
		this.validator = validator;
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	}
	
	@Resource
    private WebServiceContext context;

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
		log.info("REST request: "+httpMethod+" "+path+"?"+query);

		ValidationResult vr = null;
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();
		int responseStatus;

		try {
			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			vr = validator.validate(request);
			if( vr.isValid() ){
				responseStatus = HttpURLConnection.HTTP_OK;
			}else{
				responseStatus = HTTP_UNPROCESSABLE_ENTITY; // Unprocessable entity
				vr.forEachErrorMessage(s -> outcome.addIssue(Severity.error, s));
			}
		} catch (XPathExpressionException e) {
			responseStatus = HttpURLConnection.HTTP_INTERNAL_ERROR;
		} catch (TransformerException e) {
			responseStatus = HTTP_UNSUPPORTED_TYPE;
		}
		
		if( path != null && path.equals("_validate") ){
			// only validation, no submission
			
		}else{
			// check arguments/valid id
			// otherwise return HTTP_BAD_REQUEST
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
