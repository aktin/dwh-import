package org.aktin.cda;

import java.util.Iterator;

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
	public CDAStatus process(String patientId, String encounterId, String documentId, Document document) throws CDAException;
	
	/**
	 * Delete a document by its document id.
	 * 
	 * @param documentId document id
	 * @throws DocumentNotFoundException if there is no ID assigned to 
	 * @throws CDAException
	 */
	public void delete(String documentId)throws DocumentNotFoundException, CDAException;
	
	public Iterator<CDASummary> search(String patientId, String encounterId);
	
	public CDASummary get(String documentId);
}
