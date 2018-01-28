package org.aktin.cda.etl.fhir.patient;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;

import org.junit.Test;
import org.w3c.dom.Document;

public class TestPatient {

	@Test
	public void verifyPatientXML() throws ParserConfigurationException, TransformerException{
		MinimalPatient pat = new MinimalPatient();
		pat.id = "123";
		pat.gender = Gender.male;
		pat.birthDate = "2001";
		pat.deceasedBoolean = true;
		DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document dom = pat.buildDOM(db);
		// TODO compare the output to xml resource
		XMLUtils.printDOM(dom, System.out);
	}
}
