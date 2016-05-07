package org.aktin.cda.etl.fhir;

import javax.ws.rs.GET;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@Path("")
public class ConformanceStatement {

	private Response read(){
		return Response.ok("TODO").build();
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
