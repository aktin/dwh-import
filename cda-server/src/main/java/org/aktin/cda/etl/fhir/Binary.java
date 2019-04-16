package org.aktin.cda.etl.fhir;

import java.io.BufferedWriter;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Random;
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
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.Preferences;
import org.aktin.cda.CDAException;
import org.aktin.cda.CDAParser;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.CDAStatus;
import org.aktin.cda.CDAStatus.Status;
import org.aktin.cda.CDASummary;
import org.aktin.cda.ExternalInterface;
import org.aktin.cda.UnsupportedTemplateException;
import org.aktin.cda.Validator;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.IssueType;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;
import org.aktin.dwh.ImportSummary;
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
	@Inject
	private ImportSummary hallihallo2;
	@Inject
	private Preferences prefs;
	
	public Binary() throws ParserConfigurationException{
		outputFactory = XMLOutputFactory.newFactory();
		documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		parser = new CDAParser();
	}
	
	@POST
	@Path("$validate")
	public Response validate(Source doc){
		log.info("Validation requested");
		SimplifiedOperationOutcome outcome = new SimplifiedOperationOutcome();
		try{
			Document cda = parser.buildDOM(doc);
			String templateId = parser.extractTemplateId(cda);
//			String documentId = parser.extractDocumentId(cda);
			boolean isValid;
			synchronized( validator ){
				isValid = validator.validate(cda, templateId, new ValidationErrorsToOperationOutcome(outcome));
			}
			if( false == isValid ){
				outcome.addIssue(Severity.error, "Validation result: FAILED");
			}
		}catch( TransformerException | XPathExpressionException | UnsupportedTemplateException e ){
			outcome.addIssue(Severity.error, IssueType.exception, e.toString());
		}
		try {
			return Response.ok().entity(outcomeToXML(outcome)).build();
		} catch (XMLStreamException e) {
			log.log(Level.SEVERE, "Unable to produce response XML", e);
			return Response.serverError().entity("Unable to produce response XML: "+e.toString()).build();
		}
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
		String templateId = null;
		boolean isValid = false;
		boolean importSuccessful = false;
		URI location = null;
		Document cda=null;
		try {
			cda = parser.buildDOM(doc);
			templateId = parser.extractTemplateId(cda);
			String documentId = parser.extractDocumentId(cda); // XXX document ID not correctly extracted
			// if not found, templateId or documentId contain empty string ""
			// which will result in an UnsupportedTemplateException

			// TODO differentiate between internal errors and validation problems (e.g. xml syntax)
			synchronized( validator ){
				isValid = validator.validate(cda, templateId, new ValidationErrorsToOperationOutcome(outcome));
			}
			if( isValid ){
				// check arguments/valid id
				// otherwise return HTTP_BAD_REQUEST
				String[] patientId = parser.extractPatientId(cda);
				String[] encounterId = parser.extractEncounterId(cda);
				// process document
				CDAStatus stat = processor.createOrUpdate(cda, documentId, templateId, patientId, encounterId);
				// check whether document was created or updated, return 201 or 200
				if( stat.getStatus() == Status.Created ){
					// create location conforming to FHIR specification
					location = URI.create("Binary/"+stat.getDocumentId()+"/_history/0");
					response = Response.created(location);
					
					hallihallo2.addCreated(templateId);
					importSuccessful = true;
				}else if( stat.getStatus() == Status.Updated ){
					response = Response.ok();
					location = URI.create("Binary/"+stat.getDocumentId());
					// Location header not allowed for status 200
					hallihallo2.addUpdated(templateId);
					importSuccessful = true;
				}else if( stat.getStatus() == Status.Rejected ) {
					response = Response.status(409); // HTTP conflict
				}else{
					throw new UnsupportedOperationException("Unexpected CDA status "+stat.getStatus());
				}
				
				response.lastModified(stat.getLastModified());
				response.tag(stat.getSummary().getVersion());

			}else{

				response = Response.status(422); // Unprocessable entity
				outcome.addIssue(Severity.fatal, "XML validation not passed");
			}
		} catch (XPathExpressionException e) {
			response = Response.serverError();
			log.log(Level.FINE, "XPath error", e);
			outcome.addIssue(Severity.fatal, "XPath error during transformation: "+e);
		} catch (TransformerException e) {
			log.log(Level.FINE, "Transformation failed", e);
			response = Response.status(Response.Status.UNSUPPORTED_MEDIA_TYPE);
			outcome.addIssue(Severity.fatal, "XML transformation error: "+e);
		} catch (UnsupportedTemplateException e) {
			log.log(Level.WARNING, "Unsupported template: "+templateId);
			response = Response.status(422);
			outcome.addIssue(Severity.fatal, "Unsupported CDA template '"+templateId+"'");
		} catch (CDAException e) {
			response = Response.status(Response.Status.INTERNAL_SERVER_ERROR);
			log.log(Level.WARNING, "Unable to import CDA", e);
			if( e.getCause() != null ){
				outcome.addIssue(SimplifiedOperationOutcome.Severity.error, e.getCause().getMessage());
//				log.log(Level.INFO, "Caused by "+e.getCause(), e.getCause());
			}else{
				outcome.addIssue(SimplifiedOperationOutcome.Severity.error, e.toString());
			}
			// might want to add suppressed exceptions, but might be many
		}
		
		// HTTP status response
		// should add a Location header with the created id and version
		// Location: [base]/Binary/[id]/_history/[vid]
		if( false == importSuccessful ){
			hallihallo2.addRejected(templateId, isValid, outcome.toString());
		}
		if( cda != null ){
			tryDebugProcessing(cda, outcome);
		}
		try {
			return response.entity(outcomeToXML(outcome)).build();
		} catch (XMLStreamException e) {
			// internal error
			log.log(Level.SEVERE, "Unable to produce outcome XML", e);
			return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();
		}		
	}

	private void tryDebugProcessing(Document cda, SimplifiedOperationOutcome outcome){
		String debugDir = prefs.get("import.cda.debug.dir");
		if( debugDir == null || debugDir.length() == 0 ){
			return; // nothing to do
		}
		String debugLevel = prefs.get("import.cda.debug.level");
		if( debugLevel != null && debugLevel.equals("error") && outcome.getIssueCount() == 0 ){
			// dump only documents with errors
			return; // nothing to do
		}
	
		// XXX maybe extract patient id extension for name?
		StringBuilder name = new StringBuilder();
		String ts = Long.toHexString(System.currentTimeMillis());
		// pad with zeros
		for( int i=ts.length(); i<16; i++ ){
			name.append('0');
		}
		name.append(ts);
		// append error count
		name.append('-').append(Integer.toString(outcome.getIssueCount()));
		// append extension
		name.append(".xml");
		java.nio.file.Path debugDoc = Paths.get(debugDir, name.toString());
		if( Files.exists(debugDoc) ){
			// append random string
			name.insert(name.length()-4, "-"+Integer.toHexString(new Random().nextInt(Integer.MAX_VALUE)));
			debugDoc = Paths.get(debugDir, name.toString());
		}
		try( BufferedWriter out = Files.newBufferedWriter(debugDoc, StandardCharsets.UTF_8, StandardOpenOption.CREATE_NEW) ){
			Source src = new DOMSource(cda);
			Transformer copy = TransformerFactory.newInstance().newTransformer();
			try{
				copy.setOutputProperty(OutputKeys.INDENT, "yes");
				copy.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
			}catch( IllegalArgumentException e ){
				log.warning("Failed to configure indent for XML debug documents: "+e.getMessage());
			}
			copy.transform(src, new StreamResult(out));
			// write errors in XML comment after content
			out.write("\n\n<!-- OperationOutcome\n");
			out.write(outcome.toString().replaceAll("<", "&lt;"));
			out.write("\n-->\n");
			log.info("CDA document written to "+debugDoc.toString());
		} catch (IOException | TransformerException e ) {
			log.log(Level.WARNING, "Unable to write CDA debug document to "+debugDoc.toString(), e);
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
