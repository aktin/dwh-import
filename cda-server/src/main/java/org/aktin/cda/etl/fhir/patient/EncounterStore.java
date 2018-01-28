package org.aktin.cda.etl.fhir.patient;

import java.io.IOException;

public interface EncounterStore {

	/**
	 * Create an encounter
	 * @param encounter data
	 * @return encounter id
	 * @throws IOException error
	 */
	public String create(MinimalEncounter encounter) throws IOException;
	public void update(MinimalEncounter encounter) throws IOException;
	public MinimalEncounter read(String id) throws IOException;
	public void delete(String id) throws IOException;
}
