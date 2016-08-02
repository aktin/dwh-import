package org.aktin.cda;

public class UnsupportedTemplateException extends CDAException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UnsupportedTemplateException(String templateId){
		super("Template not supported: "+templateId);
	}
}
