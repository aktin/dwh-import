package org.aktin.cda.etl.demo;

import java.io.IOException;
import java.util.HashMap;

import org.aktin.cda.etl.fhir.patient.MinimalPatient;
import org.aktin.cda.etl.fhir.patient.PatientStore;

public class MemoryPatientStore implements PatientStore {

	private HashMap<String, MinimalPatient> store;

	public MemoryPatientStore() {
		store = new HashMap<>();
	}
	
	@Override
	public String create(MinimalPatient patient) throws IOException {
		if( patient.id != null ){
			// predefined id, try to put at that location
			if( store.containsKey(patient.id) ){
				// conflict with existing id
				throw new IOException("Predefined patient id collides with existing id: "+patient.id);
			}
		}else{
			String newId = Integer.toString(store.size());
			if( store.containsKey(newId) ){
				// append suffix
				newId += "_1";
			}
			patient.id = newId;
		}
		store.put(patient.id, patient);
		return patient.id;
	}

	@Override
	public void update(MinimalPatient patient) throws IOException {
		store.put(patient.id, patient);
	}

	@Override
	public MinimalPatient read(String id) throws IOException {
		return store.get(id);
	}

	@Override
	public void delete(String id) throws IOException {
		store.remove(id);
		// TODO allow feedback whether the patient was previously deleted
	}

}
