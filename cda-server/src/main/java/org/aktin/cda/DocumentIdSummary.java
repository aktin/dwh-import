package org.aktin.cda;

import java.util.Date;

public class DocumentIdSummary implements CDASummary {

	private String documentId;
	
	public DocumentIdSummary(String documentId) {
		this.documentId = documentId;
	}
	@Override
	public String getDocumentId() {
		return documentId;
	}

	@Override
	public Date getLastModified() {
		return null;
	}

	@Override
	public Date getCreated() {
		return null;
	}

	@Override
	public String getVersion() {
		return null;
	}

}
