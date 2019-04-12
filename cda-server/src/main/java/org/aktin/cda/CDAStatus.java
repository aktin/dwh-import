package org.aktin.cda;

import java.util.Date;

public class CDAStatus {
	private CDASummary summary;
	private Status status;
	// XXX maybe add information/warning messages 
	
	public enum Status{
		Created,
		Updated,
		Rejected
	}

	public CDAStatus(CDASummary summary, Status status){
		this.summary = summary;
		this.status = status;
	}
	
	public static CDAStatus created(CDASummary summary){
		return new CDAStatus(summary, Status.Created);
	}
	public static CDAStatus updated(CDASummary summary){
		return new CDAStatus(summary, Status.Updated);
	}
	public static CDAStatus rejected(String documentId) {
		return new CDAStatus(new DocumentIdSummary(documentId), Status.Rejected);
	}
	
	public Date getLastModified(){
		return summary.getLastModified();
	}
	public Status getStatus(){
		return status;
	}
	
	public CDASummary getSummary(){
		return summary;
	}
	
	public String getDocumentId(){
		return summary.getDocumentId();
	}
}
