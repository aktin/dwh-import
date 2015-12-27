package org.aktin.cda.servlet;


import javax.inject.Singleton;

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

@Singleton
public class CDAImportBean implements CDAProcessor{

	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		// TODO Auto-generated method stub
		
	}

}
