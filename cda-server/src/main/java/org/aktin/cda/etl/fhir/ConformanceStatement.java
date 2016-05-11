package org.aktin.cda.etl.fhir;

import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;



@Path("")
public class ConformanceStatement {
	private static final Logger log = Logger.getLogger(ConformanceStatement.class.getName());

	private Response read(){
		return Response.ok(getClass().getResourceAsStream("/fhir/conformance.xml"),MediaType.TEXT_XML_TYPE).build();
	}
	
	@OPTIONS
	@Produces({FhirConstants.MEDIA_TYPE_XML_FHIR,MediaType.APPLICATION_XML,MediaType.TEXT_XML})
	public Response options(){
		log.info("FHIR Conformance requested via OPTIONS [base]");
		return read();
	}
	
	@GET
	@Path("metadata")
	@Produces({FhirConstants.MEDIA_TYPE_XML_FHIR,MediaType.APPLICATION_XML,MediaType.TEXT_XML})
	public Response metadata(){
		log.info("FHIR Conformance requested via GET [base]/metadata");
		return read();
	}
}