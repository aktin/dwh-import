package org.aktin.cda;

import org.w3c.dom.Document;

public interface CDAProcessor {

	/**
	 * Process a CDA document
	 * @param patientId patient id
	 * @param encounterId encounter id
	 * @param documentId document id, changes with new version of the document
	 * @param document CDA DOM document
	 * @throws CDAException processing error
	 */
	public void process(String patientId, String encounterId, String documentId, Document document) throws CDAException;
}
