package org.aktin.cda;

/**
 * External interface for receiving CDA documents.
 * 
 * @author R.W.Majeed
 *
 */
public interface ExternalInterface {

	/**
	 * Set the validator to validate the retrieved XML
	 * documents before they are passed to the handler.
	 * 
	 * @param validator validator
	 */
	public void setValidator(Validator validator);

	/**
	 * Set the CDA handler to process the document
	 * after successful validation.
	 * 
	 * @param processor handler
	 */
	public void setProcessor(CDAProcessor processor);
	
}
