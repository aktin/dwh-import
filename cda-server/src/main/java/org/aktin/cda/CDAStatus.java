package org.aktin.cda;

import java.util.Date;

public class CDAStatus {
	private CDASummary summary;
	private Status status;
	
	public enum Status{
		Created,
		Updated
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
