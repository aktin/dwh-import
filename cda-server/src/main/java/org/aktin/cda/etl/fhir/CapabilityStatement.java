package org.aktin.cda.etl.fhir;

import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;



@Path("")
public class CapabilityStatement {
	private static final Logger log = Logger.getLogger(CapabilityStatement.class.getName());

	
	private Response read(){		
		return Response.ok(getClass().getResourceAsStream("/fhir/capability-statement.xml"),FhirConstants.MEDIA_TYPE_XML_FHIR2).encoding("UTF-8").build();
	}
	
	@OPTIONS
	public Response options(){
		log.info("FHIR capabilities requested via OPTIONS [base]");
		return read();
	}
	
	@GET
	@Path("metadata")
	public Response metadata(){
		log.info("FHIR capabilities requested via GET [base]/metadata");
		return read();
	}
}