package org.aktin.cda.etl.rest;

import java.io.IOException;
import java.io.StringReader;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.Provider;
import javax.xml.ws.Service;
import javax.xml.ws.ServiceMode;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceProvider;
import javax.xml.ws.handler.MessageContext;

import org.aktin.cda.ValidationResult;
import org.aktin.cda.etl.demo.ValidationService;


@WebServiceProvider()
@ServiceMode(value = Service.Mode.MESSAGE)
public class RestService implements Provider<Source>{
	private static final Logger log = Logger.getLogger(RestService.class.getName());
	private ValidationService validator;
	
	public RestService(ValidationService validator){
		this.validator = validator;
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
			vr = validator.validate(request);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			log.log(Level.WARNING, "Error during validation", e);
			responseStatus = 500;
		}
		if( vr != null ){
			// TODO check number of errors, output error messages
		}
		
		// HTTP status response
		mc.put(MessageContext.HTTP_RESPONSE_CODE, responseStatus);
		
		String response = "TODO implement";
		return new StreamSource(new StringReader(response));
	}
	
}
