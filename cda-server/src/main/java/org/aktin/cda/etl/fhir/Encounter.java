package org.aktin.cda.etl.fhir;

import java.io.IOException;
import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;

import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.IssueType;
import org.aktin.cda.etl.fhir.SimplifiedOperationOutcome.Severity;
import org.aktin.cda.etl.fhir.patient.EncounterStore;
import org.aktin.cda.etl.fhir.patient.MinimalEncounter;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// TODO use generic superclass to reduce duplicate code for Patient and Encounter

@Path("Encounter")
@Produces({FhirConstants.MEDIA_TYPE_XML_FHIR2, MediaType.APPLICATION_XML, MediaType.TEXT_XML})
public class Encounter extends XmlResource{
	private static final Logger log = Logger.getLogger(Encounter.class.getName());
	private EncounterStore store;

	public Encounter() throws ParserConfigurationException {
		super();
	}


	@Inject
	public void setEncounterStore(EncounterStore store){
		this.store = store;
	}

	@POST
	@Consumes(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	public Response create(Source xml, @HeaderParam("If-None-Exist") String conditionalSearch) throws TransformerException, XMLStreamException{
		log.info("Create [if-none-exist="+conditionalSearch+"]");
		Document dom = buildDOM(xml);
		SimplifiedOperationOutcome oo = new SimplifiedOperationOutcome();
		MinimalEncounter pat = parseFromDOM(dom, oo);
		// ignore any id from the resource (according to FHIR docs)
		pat.id = null;
		ResponseBuilder resp;
		if( oo.getIssueCount() == 0 ){
			// no issues with patient resource, try to store
			String id;
			try {
				id = store.create(pat);
				URI location = URI.create("Patient/"+id);
				oo.setId(id);
				oo.addIssue(Severity.information, "Patient created");
				resp = Response.created(location);
			} catch (IOException e) {
				log.log(Level.SEVERE, "Patient create failed", e);
				oo.addIssue(Severity.fatal, e.toString());
				resp = Response.serverError();
			}
			// TODO if pat == null -> error
		}else{
			// some issues during patient parsing
			// report profile error
			resp = Response.status(422);
		}
		return resp.entity(outcomeToXML(oo)).build();
	}
	
	@DELETE
	@Path("{id}")
	@Produces(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	public Response delete(@PathParam("id") String id) throws XMLStreamException{
		log.info("delete "+id);
		SimplifiedOperationOutcome o = null;
		try {
			store.delete(id);
			o = SimplifiedOperationOutcome.info("Delete successful for id="+id);
		} catch (IOException e) {
			log.log(Level.SEVERE,"Delete failed for patient.id="+id, e);
			o = SimplifiedOperationOutcome.error(e);
		}
		return Response.ok().entity(outcomeToXML(o)).build();
	}
	@GET
	@Path("{id}")
	@Produces(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	public Response read(@PathParam("id") String id) throws XMLStreamException{
		log.info("read "+id);
		MinimalEncounter enc;
		try {
			enc = store.read(id);
		} catch (IOException e) {
			return Response.serverError().entity(outcomeToXML(SimplifiedOperationOutcome.error(e))).build();
		}
		// TODO OperationOutcome not required for 4xx or 5xx errors
		if( enc == null ){
			// not found
			// TODO check if return contents are correct
			return Response.status(404).entity(outcomeToXML(SimplifiedOperationOutcome.info("No encounter with id="+id))).build();
		}
		return Response.ok(new FhirDomSource(enc.buildDOM(documentBuilder))).build();
	}

	
	private static MinimalEncounter parseFromDOM(Document dom, SimplifiedOperationOutcome outcome){
		MinimalEncounter x = new MinimalEncounter();
		NodeList nl = dom.getDocumentElement().getChildNodes();

		for( int i=0; i<nl.getLength(); i++ ){
			Node n = nl.item(i);
			if( n.getNodeType() != Node.ELEMENT_NODE ){
				continue;
			}
			Element el = (Element)n;
			switch( el.getLocalName() ){
			case "id":
				x.id = el.getAttribute("value");
				break;
			default:
				// unsupported field
				outcome.addIssue(Severity.error, IssueType.exception, "Unsupported field in Patient resource: "+el.getLocalName());
			}
		}
		return x;

	}

}
