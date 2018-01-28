package org.aktin.cda.etl.fhir.patient;

import javax.xml.parsers.DocumentBuilder;

import org.aktin.cda.etl.fhir.FhirConstants;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class MinimalEncounter {
	public String id;
	public String patientId;
	public String startTime;
	public String endTime;

	public Document buildDOM(DocumentBuilder builder){
		Document dom = builder.newDocument();
		Element p = dom.createElementNS(FhirConstants.XMLNS_FHIR,"Encounter");
		dom.appendChild(p);
		Element e;
		if( id != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "id");
			e.setAttribute("value",id);
			p.appendChild(e);
		}
		// TODO xxx
		return dom;
	}

}
