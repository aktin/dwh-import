package org.aktin.cda.etl.fhir.patient;

import javax.xml.parsers.DocumentBuilder;

import org.aktin.cda.etl.fhir.FhirConstants;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class MinimalPatient {
	public String id;
	public String[] identifier;
	public Gender gender;
	public String birthDate;
	public Boolean deceasedBoolean;
	public String deceasedDate;

	public MinimalPatient(){
	}
	public MinimalPatient(Gender gender){
		this.gender = gender;
	}
	public Document buildDOM(DocumentBuilder builder){
		Document dom = builder.newDocument();
		Element p = dom.createElementNS(FhirConstants.XMLNS_FHIR,"Patient");
		dom.appendChild(p);
		Element e;
		if( id != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "id");
			e.setAttribute("value",id);
			p.appendChild(e);
		}
		// TODO identifier
		if( gender != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "gender");
			e.setAttribute("value", gender.name());
			p.appendChild(e);
		}
		if( birthDate != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "birthDate");
			e.setAttribute("value", birthDate);
			p.appendChild(e);
		}
		if( deceasedDate != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "deceasedDateTime");
			e.setAttribute("value", deceasedDate);
			p.appendChild(e);
		}else if( deceasedBoolean != null ){
			e = dom.createElementNS(FhirConstants.XMLNS_FHIR, "deceasedBoolean");
			e.setAttribute("value", deceasedBoolean.toString());
			p.appendChild(e);
		}
		return dom;
	}
}
