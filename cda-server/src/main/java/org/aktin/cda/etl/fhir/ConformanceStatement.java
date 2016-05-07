package org.aktin.cda.etl.fhir;

import javax.ws.rs.GET;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


@Path("")
public class ConformanceStatement {
	//private static final Logger log = Logger.getLogger(ConformanceStatement.class.getName());

	private Response read(){
		return Response.ok(getClass().getResourceAsStream("/fhir/conformance.xml"),MediaType.TEXT_XML_TYPE).build();
	}
	
	@OPTIONS
	public Response options(){
		return read();
	}
	
	@GET
	@Path("metadata")
	public Response metadata(){
		return read();
	}
}