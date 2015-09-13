package org.aktin.cda.etl.rest;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceProvider;
import javax.xml.ws.handler.MessageContext;

import org.aktin.cda.ValidationResult;
import org.aktin.cda.etl.demo.ValidationService;
import org.aktin.cda.etl.rest.SimplifiedOperationOutcome.Severity;


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
		
		log.info("REST request: "+httpMethod+" "+path+"?"+query);

		ValidationResult vr = null;
		int responseStatus = 200;
		try {
			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			vr = validator.validate(request);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			log.log(Level.WARNING, "Error during validation", e);
			responseStatus = 500;
		}
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();

		if( vr != null ){
			if( vr.isValid() ){
				responseStatus = 200;
			}else{
				responseStatus = 422;
				vr.forEachErrorMessage(s -> outcome.addIssue(Severity.error, s));
			}
		}
		
		// HTTP status response
		mc.put(MessageContext.HTTP_RESPONSE_CODE, responseStatus);
		
		try {
			return outcome.generateXml(outputFactory, documentBuilder);
		} catch (XMLStreamException e) {
			// internal error
			mc.put(MessageContext.HTTP_RESPONSE_CODE, 500);
			return null; // TODO check whether returning null is ok
		}
	}
	
}
