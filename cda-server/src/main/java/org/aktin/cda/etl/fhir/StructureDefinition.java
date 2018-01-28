package org.aktin.cda.etl.fhir;

import java.io.IOException;
import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;


@Path("StructureDefinition")
public class StructureDefinition extends FilteredStringResource{
	private static final Logger log = Logger.getLogger(StructureDefinition.class.getName());

	@Context
	private UriInfo uri;

	@GET
	@Produces(FhirConstants.MEDIA_TYPE_XML_FHIR2)
	@Path("{id}")
	public Response read(@PathParam("id") String id) throws IOException{
		log.info("StructureDefinition:"+id);
		String res = null;
		if( id.equals("patient") ){
			res = "/fhir/sd.patient.xml";			
		}else if( id.equals("encounter") ){
			res = "/fhir/sd.encounter.xml";
		}else{
			res = null;
		}
		if( res == null ){
			throw new NotFoundException();
		}
		StringBuilder sb = readResource(res);
		FilteredStringResource.replaceAllStrings(sb, "@@BASEURL@@", uri.getBaseUri().toString());

		return Response.ok(sb.toString(),FhirConstants.MEDIA_TYPE_XML_FHIR2).build();			

	}
}