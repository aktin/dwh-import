package org.aktin.cda.etl.demo;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.CDAStatus;
import org.aktin.cda.CDASummary;
import org.aktin.cda.DocumentNotFoundException;
import org.w3c.dom.Document;

public class HashtableStore implements CDAProcessor{
	private Map<String, VirtualDocument> map;

	private class VirtualDocument implements CDASummary{
		String documentId;
		int version;
		Date created;
		Date lastModified;
		
		public VirtualDocument(String docId){
			this.documentId = docId;
			this.created = new Date();
			this.lastModified = this.created;
			this.version = 1;
		}

		@Override
		public String getDocumentId() {
			return documentId;
		}

		@Override
		public Date getLastModified() {
			return lastModified;
		}

		@Override
		public Date getCreated() {
			return created;
		}
		public void updateLastModified(){
			this.lastModified = new Date();
			this.version ++;
		}

		@Override
		public String getVersion() {
			return Integer.toString(version);
		}
	}
	
	
	public HashtableStore() {
		this.map = new Hashtable<>();
	}
	@Override
	public CDAStatus createOrUpdate(Document document, String documentId, String templateId, String[] patientId, String[] encounterId)
			throws CDAException {
		VirtualDocument doc = map.get(documentId);
		if( doc == null ){
			doc = new VirtualDocument(documentId);
			return CDAStatus.created(doc);
		}else{
			doc.updateLastModified();
			return CDAStatus.updated(doc);
		}
	}

	@Override
	public void delete(String documentId) throws DocumentNotFoundException, CDAException {
		VirtualDocument doc = map.get(documentId);
		if( doc == null )throw new DocumentNotFoundException(documentId);
		else{
			map.remove(documentId);
		}
	}

	@Override
	public Iterator<CDASummary> search(String patientId, String encounterId) {
		List<CDASummary> results = new ArrayList<>();
		/*
		for( VirtualDocument doc : map.values() ){
			if( patientId != null && !patientId.equals(doc.patientId) ){
				// patient not matching
				continue;
			}
			if( encounterId != null && !encounterId.equals(doc.encounterId) ){
				// encounter not matching
				continue;
			}
			results.add(doc);
		}*/
		return results.iterator();
	}

	@Override
	public CDASummary get(String documentId) {
		VirtualDocument doc = map.get(documentId);
		return doc;
	}
	@Override
	public Path transform(Document cda, String templateId) throws CDAException {
		throw new UnsupportedOperationException();
	}

}
