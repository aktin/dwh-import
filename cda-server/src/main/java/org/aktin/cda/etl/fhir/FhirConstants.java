package org.aktin.cda.etl.fhir;

import javax.ws.rs.core.MediaType;

public class FhirConstants {
	public static final String MEDIA_TYPE_XML_FHIR = "application/xml+fhir";
	public static final String[] MEDIA_TYPES_XML = {MEDIA_TYPE_XML_FHIR, MediaType.APPLICATION_XML, MediaType.TEXT_XML};
	
}
