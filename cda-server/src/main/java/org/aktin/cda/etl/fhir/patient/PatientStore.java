package org.aktin.cda.etl.fhir.patient;

import java.io.IOException;

public interface PatientStore {

	/**
	 * Create a patient
	 * @param patient data
	 * @return patient id
	 * @throws IOException error
	 */
	public String create(MinimalPatient patient) throws IOException;
	public void update(MinimalPatient patient) throws IOException;
	public MinimalPatient read(String id) throws IOException;
	public void delete(String id) throws IOException;
}
