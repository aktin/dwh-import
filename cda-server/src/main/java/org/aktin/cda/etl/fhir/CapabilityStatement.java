package org.aktin.cda.etl.fhir;

import java.io.IOException;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;



@Path("")
public class CapabilityStatement extends FilteredStringResource{
	private static final Logger log = Logger.getLogger(CapabilityStatement.class.getName());

	@Inject
	private UriInfo uri;
	
	private Response read() throws IOException{
		StringBuilder res = readResource("/fhir/capability-statement.xml");
		FilteredStringResource.replaceAllStrings(res, "@@BASEURL@@", uri.getBaseUri().toString());
		return Response.ok(res.toString(),FhirConstants.MEDIA_TYPE_XML_FHIR2).encoding("UTF-8").header("Access-Control-Allow-Origin", "*").build();
	}
	
	@OPTIONS
	public Response options() throws IOException{
		log.info("FHIR capabilities requested via OPTIONS [base]");
		return read();
	}
	
	@GET
	@Path("metadata")
	public Response metadata() throws IOException{
		log.info("FHIR capabilities requested via GET [base]/metadata");
		return read();
	}
}