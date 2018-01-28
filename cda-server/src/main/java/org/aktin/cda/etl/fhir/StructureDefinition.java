package org.aktin.cda.etl.fhir;

import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


@Path("StructureDefinition")
public class StructureDefinition {
	private static final Logger log = Logger.getLogger(StructureDefinition.class.getName());
	
	@GET
	@Produces(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	@Path("{id}")
	public Response read(@PathParam("id") String id){
		log.info("StructureDefinition:"+id);
		if( id.equals("patient") ){
			return Response.ok(getClass().getResourceAsStream("/fhir/capability-statement.xml"),FhirConstants.MEDIA_TYPE_XML_FHIR2).build();			
		}else{
			throw new NotFoundException();
		}
	}
}