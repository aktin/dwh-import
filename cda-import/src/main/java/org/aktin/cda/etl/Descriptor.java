package org.aktin.cda.etl;

import java.util.Date;

import org.aktin.cda.CDASummary;

public class Descriptor implements CDASummary {
	private String docId;
	Date lastModified;
	Date created;
	
	public Descriptor(String docId){
		this.docId = docId;
	}
	@Override
	public String getDocumentId() {
		return docId;
	}

	@Override
	public Date getLastModified() {
		return lastModified;
	}

	@Override
	public Date getCreated() {
		return created;
	}

	@Override
	public String getVersion() {
		return null;
	}

}
