package org.aktin.cda.etl;

import javax.inject.Singleton;

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

@Singleton
public class DepTest implements CDAProcessor {

	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		System.out.println("PROCESS CDA "+patientId);
	}

}
