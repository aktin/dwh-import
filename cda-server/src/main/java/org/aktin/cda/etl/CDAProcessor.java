package org.aktin.cda.etl;

import javax.xml.transform.Source;

public interface CDAProcessor {

	public void process(String patientId, String encounterId, String documentId, Source document);
}
