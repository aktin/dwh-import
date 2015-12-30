package org.aktin.cda.etl;

import javax.annotation.PreDestroy;
import javax.inject.Singleton;

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

@Singleton
public class CDAImporterMockUp implements CDAProcessor, AutoCloseable{
	public CDAImporterMockUp() {
		System.out.println("CONSTRUCT CDAImporterMockUp");
	}
	
	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		// TODO Auto-generated method stub
		
	}

	@PreDestroy
	@Override
	public void close() {
		System.out.println("CLOSE CDAImporterMockUp");
	}

}
