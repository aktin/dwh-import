package org.aktin.cda;

import java.nio.file.Path;
import java.util.Iterator;

import org.w3c.dom.Document;

public interface CDAProcessor {

	/**
	 * Process a CDA document
	 * @param document CDA DOM document
	 * @param documentId document id, changes with new version of the document
	 * @param templateId template id
	 * @throws CDAException processing error
	 * @throws UnsupportedTemplateException template not supported
	 */
	public CDAStatus createOrUpdate(Document document, String documentId, String templateId) throws CDAException, UnsupportedTemplateException;
	
	public Path transform(Document cda, String templateId) throws CDAException;
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
