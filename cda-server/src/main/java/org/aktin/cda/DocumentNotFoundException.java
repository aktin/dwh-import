package org.aktin.cda;

/**
 * Document not found. Thrown e.g. when requested to delete a document
 * which was not found.
 * 
 * @author R.W.Majeed
 *
 */
public class DocumentNotFoundException extends CDAException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DocumentNotFoundException(String documentId) {
		super("Document not found with id="+documentId);
	}

	
}
