package org.aktin.cda.etl.fhir;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
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
import org.aktin.cda.etl.fhir.patient.Gender;
import org.aktin.cda.etl.fhir.patient.MinimalPatient;
import org.aktin.cda.etl.fhir.patient.PatientStore;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Path("Patient")
@Produces({FhirConstants.MEDIA_TYPE_XML_FHIR2, MediaType.APPLICATION_XML, MediaType.TEXT_XML})
public class Patient extends XmlResource{
	private static final Logger log = Logger.getLogger(Patient.class.getName());
	private PatientStore patientStore;

	public Patient() throws ParserConfigurationException {
		super();
	}


	@Inject
	public void setPatientStore(PatientStore store){
		patientStore = store;
	}

	@POST
	@Consumes(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	public Response create(Source xml, @HeaderParam("If-None-Exist") String conditionalSearch) throws TransformerException, XMLStreamException{
		log.info("Create [if-none-exist="+conditionalSearch+"]");
		Document dom = buildDOM(xml);
		SimplifiedOperationOutcome oo = new SimplifiedOperationOutcome();
		MinimalPatient pat = parseFromDOM(dom, oo);
		// ignore any id from the resource (according to FHIR docs)
		pat.id = null;
		ResponseBuilder resp;
		if( oo.getIssueCount() == 0 ){
			// no issues with patient resource, try to store
			String id;
			try {
				id = patientStore.create(pat);
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
	
	@PUT
	@Consumes(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	@Path("{id}")
	public Response update(@PathParam("id") String id, Source xml) throws TransformerException, IOException, XMLStreamException{
		log.info("update "+id);
		Document dom = buildDOM(xml);
		SimplifiedOperationOutcome oo = new SimplifiedOperationOutcome();
		MinimalPatient pat = parseFromDOM(dom, oo);
		ResponseBuilder resp;
		if( pat.id != null && !pat.id.equals(id) ){
			oo.addIssue(Severity.fatal, "Patient.id differs from logical id from url");
			resp = Response.status(400);
		}else if( patientStore.read(id) == null ){
			// patient does not exist
			patientStore.create(pat);
			oo.addIssue(Severity.information, "Patient created");
			oo.setId(id);
			resp = Response.created(URI.create("Patient/"+id));
		}else{
			patientStore.update(pat);
			oo.addIssue(Severity.information, "Patient updated");
			oo.setId(id);
			resp = Response.ok();
		}
		return resp.entity(outcomeToXML(oo)).build();
	}
	@DELETE
	@Path("{id}")
	@Produces(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	public Response delete(@PathParam("id") String id) throws XMLStreamException{
		log.info("delete "+id);
		/*
		// ignore submitted data
		if( body != null ){
			log.info("Ignoring body for delete");
			try {
				body.close();
			} catch (IOException e) {
			}
		}*/
		SimplifiedOperationOutcome o = null;
		try {
			patientStore.delete(id);
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
		MinimalPatient pat;
		try {
			pat = patientStore.read(id);
		} catch (IOException e) {
			return Response.serverError().entity(outcomeToXML(SimplifiedOperationOutcome.error(e))).build();
		}
		// TODO OperationOutcome not required for 4xx or 5xx errors
		if( pat == null ){
			// not found
			// TODO check if return contents are correct
			return Response.status(404).entity(outcomeToXML(SimplifiedOperationOutcome.info("No patient with id="+id))).build();
		}
		return Response.ok(new FhirDomSource(pat.buildDOM(documentBuilder))).build();
	}

	
	private static MinimalPatient parseFromDOM(Document dom, SimplifiedOperationOutcome outcome){
		MinimalPatient x = new MinimalPatient();
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
			case "gender":
				x.gender = Gender.valueOf(el.getAttribute("value"));
				break;
			case "birthDate":
				x.birthDate = el.getAttribute("value");
				break;
			case "deceasedBoolean":
				x.deceasedBoolean = Boolean.parseBoolean(el.getAttribute("value"));
				break;
			case "deceasedDateTime":
				x.deceasedDate = el.getAttribute("value");
				break;
			default:
				// unsupported field
				outcome.addIssue(Severity.error, IssueType.exception, "Unsupported field in Patient resource: "+el.getLocalName());
			}
		}
		return x;

	}

}
