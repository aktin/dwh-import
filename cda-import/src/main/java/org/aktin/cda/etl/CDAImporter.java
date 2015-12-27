package org.aktin.cda.etl;

import javax.annotation.PreDestroy;
import javax.inject.Singleton;

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

@Singleton
public class CDAImporter implements CDAProcessor, AutoCloseable{

	public CDAImporter() {
		// TODO use HIStream connection to i2b2
	}

	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		// TODO Auto-generated method stub
		System.out.println("IMPORT CDA "+patientId);
		
	}

	@PreDestroy // needed for the EJB container to call this method
	@Override
	public void close() {
		System.out.println("CLOSE CDAImporter");
	}

}
