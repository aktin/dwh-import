package org.aktin.cda.etl;

import java.util.Date;

import org.aktin.cda.CDASummary;

public class Descriptor implements CDASummary {
	private String docId;
	
	public Descriptor(String docId){
		this.docId = docId;
	}
	@Override
	public String getDocumentId() {
		return docId;
	}

	@Override
	public Date getLastModified() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Date getCreated() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getVersion() {
		return null;
	}

}
