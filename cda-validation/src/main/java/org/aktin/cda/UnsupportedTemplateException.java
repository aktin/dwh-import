package org.aktin.cda;

public class UnsupportedTemplateException extends CDAException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String templateId;

	public UnsupportedTemplateException(String templateId){
		super();
		this.templateId = templateId;
	}

	public String getTemplateId(){
		return templateId;
	}

	@Override
	public String getMessage() {
		return "Template not supported: "+templateId;
	}

}
