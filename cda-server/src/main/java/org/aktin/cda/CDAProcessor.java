package org.aktin.cda;

import org.w3c.dom.Document;

public interface CDAProcessor {

	public void process(String patientId, String encounterId, String documentId, Document document);
}
