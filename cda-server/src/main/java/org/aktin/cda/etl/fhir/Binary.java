package org.aktin.cda.etl.fhir;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAParser;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.ExternalInterface;
import org.aktin.cda.ValidationResult;
import org.aktin.cda.Validator;
import org.w3c.dom.Document;

@Path("Binary")
public class Binary implements ExternalInterface{
	private static final Logger log = Logger.getLogger(Binary.class.getName());
	private Validator validator;
	private XMLOutputFactory outputFactory;
	private DocumentBuilder documentBuilder;
	private CDAParser parser;
	private CDAProcessor processor;
	
	public Binary() throws ParserConfigurationException{
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		parser = new CDAParser();
	}
	@POST
	public Response create(Source doc){
		ValidationResult vr = null;
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();
		ResponseBuilder response;
		
		try {
			Document cda = parser.buildDOM(doc);
			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			synchronized( validator ){
				vr = validator.validate(new DOMSource(cda));
			}
			if( vr.isValid() ){
				response = Response.ok();

				// extract patient id, encounter id, document id
				String[] ids = parser.extractIDs(cda);
				// check arguments/valid id
				// otherwise return HTTP_BAD_REQUEST
				// process document
				processor.process(ids[0], ids[1], ids[2], cda);
				// TODO check whether document was created or updated, return 201 or 200
				
			}else{
				response = Response.status(422); // Unprocessable entity
				vr.forEachErrorMessage(s -> outcome.addIssue(SimplifiedOperationOutcome.Severity.error, s));
			}
		} catch (XPathExpressionException e) {
			response = Response.serverError();
			log.log(Level.FINE, "XPath error", e);
		} catch (TransformerException e) {
			log.log(Level.FINE, "Transformation failed", e);
			response = Response.status(Response.Status.UNSUPPORTED_MEDIA_TYPE);
		} catch (CDAException e) {
			response = Response.status(Response.Status.INTERNAL_SERVER_ERROR);
			log.log(Level.WARNING, "Unable to import CDA", e);
			if( e.getCause() != null ){
				outcome.addIssue(SimplifiedOperationOutcome.Severity.error, e.getCause().getMessage());
			}
			// might want to add suppressed exceptions, but might be many
		}
		
		// HTTP status response
		// should add a Location header with the created id and version
		// Location: [base]/Binary/[id]/_history/[vid]
				  
		try {
			return response.entity(outcome.generateXml(outputFactory, documentBuilder)).build();
		} catch (XMLStreamException e) {
			// internal error
			return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();
		}		
	}

	@GET
	@Path("test")
	public String test(){
		return "validator="+this.validator+", processor="+processor;
	}
	@Inject
	@Override
	public void setValidator(Validator validator) {
		this.validator = validator;
	}

	@Inject
	@Override
	public void setProcessor(CDAProcessor processor) {
		this.processor = processor;
	}
}
