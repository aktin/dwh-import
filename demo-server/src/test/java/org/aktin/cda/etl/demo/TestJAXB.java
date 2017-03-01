package org.aktin.cda.etl.demo;

import javax.xml.bind.JAXB;

import org.aktin.cda.etl.fhir.ImportSummary;
import org.junit.Test;

public class TestJAXB {

	@Test
	public void marshallImportSummary(){
		ImportSummary s = new ImportSummary();
		s.addSuccess();
		s.addError(false, "Test");
		s.addError(true, "Other");
		s.addError(true, new AssertionError().toString());
		JAXB.marshal(s, System.out);
	}
}
