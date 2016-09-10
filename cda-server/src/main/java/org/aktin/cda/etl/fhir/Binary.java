package org.aktin.cda.etl.fhir;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.activation.DataSource;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.ws.rs.core.UriInfo;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAParser;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.CDAStatus;
import org.aktin.cda.CDAStatus.Status;
import org.aktin.cda.CDASummary;
import org.aktin.cda.ExternalInterface;
import org.aktin.cda.UnsupportedTemplateException;
import org.aktin.cda.Validator;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;
import org.w3c.dom.Document;

@Path("Binary")
public class Binary implements ExternalInterface{
	private static final Logger log = Logger.getLogger(Binary.class.getName());
	private Validator validator;
	private XMLOutputFactory outputFactory;
	private DocumentBuilder documentBuilder;
	private CDAParser parser;
	private CDAProcessor processor;
	@Context 
	private UriInfo uriInfo;
	
	public Binary() throws ParserConfigurationException{
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		parser = new CDAParser();
	}
	
	@POST
	@Path("$validate")
	public Response validate(Source doc){
		log.info("Validation requested");
		return Response.serverError().entity("Not implemented").build();
	}
	
	@POST
	@Path("$transform")
	public Response transform(Source doc){
		log.info("Transformation requested");
		try {
			Document cda = parser.buildDOM(doc);
			String templateId = parser.extractTemplateId(cda);
			//String documentId = parser.extractDocumentId(cda);
			java.nio.file.Path file = processor.transform(cda, templateId);
			// the following can only fail AFTER the stream has opened,
			// therefore the file will be deleted
			return Response.ok(Files.newInputStream(file, StandardOpenOption.DELETE_ON_CLOSE), MediaType.TEXT_XML).build();
		} catch (IOException | TransformerException | XPathExpressionException | CDAException e) {
			try {
				return Response.serverError().entity(serverErrorOutcome(e)).build();
			} catch (XMLStreamException e1) {
				e.addSuppressed(e1);
				log.log(Level.SEVERE, "Unable to generate XML response for error", e);
				return Response.serverError().build();
			}
		}
	}
	
	private DataSource outcomeToXML(SimplifiedOperationOutcome o) throws XMLStreamException{
		return o.generateXml(outputFactory, documentBuilder);
	}
	private DataSource serverErrorOutcome(Throwable e) throws XMLStreamException{
		return outcomeToXML(SimplifiedOperationOutcome.error(e));
	}
	@POST
	public Response create(Source doc){
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();
		ResponseBuilder response;

		boolean isValid;
		try {
			Document cda = parser.buildDOM(doc);
			String templateId = parser.extractTemplateId(cda);
			String documentId = parser.extractDocumentId(cda);
			// if not found, templateId or documentId contain empty string ""
			// which will result in an UnsupportedTemplateException

			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			synchronized( validator ){
				isValid = validator.validate(cda, templateId, new ValidationErrorsToOperationOutcome(outcome));
			}
			if( isValid ){
				// check arguments/valid id
				// otherwise return HTTP_BAD_REQUEST
				// process document
				CDAStatus stat = processor.createOrUpdate(cda, documentId, templateId);
				// TODO check whether document was created or updated, return 201 or 200

				if( stat.getStatus() == Status.Created ){
					try {
						URI location = new URI("Binary/"+stat.getDocumentId());
						response = Response.created(location);
					} catch (URISyntaxException e) {
						log.log(Level.WARNING, "Unable to build URI for created resource", e);
						response = Response.ok();
					}
				}else if( stat.getStatus() == Status.Updated ){
					response = Response.ok();
				}else{
					throw new UnsupportedOperationException("Unexpected CDA status "+stat.getStatus());
				}
				response.lastModified(stat.getLastModified());
				response.tag(stat.getSummary().getVersion());

			}else{
				response = Response.status(422); // Unprocessable entity
			}
		} catch (XPathExpressionException e) {
			response = Response.serverError();
			log.log(Level.FINE, "XPath error", e);
		} catch (TransformerException e) {
			log.log(Level.FINE, "Transformation failed", e);
			response = Response.status(Response.Status.UNSUPPORTED_MEDIA_TYPE);
		} catch (UnsupportedTemplateException e) {
			log.log(Level.WARNING, "Unsupported template", e);
			response = Response.status(422);
			outcome.addIssue(Severity.fatal, "Unsupported CDA template");
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
			return response.entity(outcomeToXML(outcome)).build();
		} catch (XMLStreamException e) {
			// internal error
			log.log(Level.SEVERE, "Unable to produce outcome XML", e);
			return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();
		}		
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
	
	@GET
	public Response search(@QueryParam("_id") String docId, @QueryParam("_lastUpdated") String lastUpdated, @QueryParam("_tag") String tag, @QueryParam("_count") Integer count){
		log.info("search via GET");
		try {
			if( docId != null ){
				CDASummary doc = this.processor.get(docId);
				if( doc == null ){
					return Response.ok(SearchBundle.createEmpty().build(outputFactory, documentBuilder)).build();
				}else{
					return Response.ok(SearchBundle.single(doc, id -> uriInfo.getAbsolutePathBuilder().path(id).build()).build(outputFactory, documentBuilder)).build();
				}
			}else{
				return Response.status(403).entity(SimplifiedOperationOutcome.error("Params not supported").generateXml(outputFactory, documentBuilder)).build();
			}
		} catch (XMLStreamException e) {
			log.log(Level.SEVERE, "Unable to generate outcome XML for not found message", e);
			return Response.serverError().entity(e.toString()).build();
		}
	}
}
