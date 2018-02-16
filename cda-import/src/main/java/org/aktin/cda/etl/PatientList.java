package org.aktin.cda.etl;

import java.io.FileNotFoundException;
import java.io.IOException;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.aktin.cda.etl.fhir.patient.Gender;
import org.aktin.cda.etl.fhir.patient.MinimalPatient;

import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.ext.Patient;
import de.sekmi.histream.ext.Patient.Sex;
import de.sekmi.histream.i2b2.I2b2Patient;
import de.sekmi.histream.i2b2.PostgresPatientStore;


@Singleton
public class PatientList implements org.aktin.cda.etl.fhir.patient.PatientStore{
	private PostgresPatientStore store;

	@Inject
	public PatientList(ObservationFactory factory){
		// locate patient store
		this.store = (PostgresPatientStore)factory.getExtension(I2b2Patient.class);
		if( this.store == null ){
			throw new IllegalStateException("No i2b2 patient store available");
		}
		
	}
	@Override
	public String create(MinimalPatient patient) throws IOException {
		throw new UnsupportedOperationException("Create patient not supported yet");
		// TODO generate patient id, external source is FHIR
		//store.createInstance(id, ExternalSourceType)
	}

	@Override
	public void update(MinimalPatient patient) throws IOException {
		Patient p = store.retrieve(patient.id);
		if( p == null ){
			throw new FileNotFoundException("Patient doesn't exist: "+patient.id);
		}
		// TODO update
		p.setSex(convertGender(patient.gender));
		// TODO birth date,
		// TODO deceasedDate
		
	}

	private static Gender convertSex(Patient.Sex sex){
		if( sex == null ){
			return null;
		}
		switch( sex ){
		case female:
			return Gender.female;
		case indeterminate:
			return Gender.other;
		case male:
			return Gender.male;
		default:
			throw new IllegalStateException("Unexpected sex "+sex);
		}
	}
	private static Patient.Sex convertGender(Gender gender){
		if( gender == null ){
			return null;
		}
		switch( gender ){
		case female:
			return Sex.female;
		case other:
			return Sex.indeterminate;
		case male:
			return Sex.male;
		default:
			throw new IllegalStateException("Unexpected gender "+gender);
		}
	}
	@Override
	public MinimalPatient read(String id) throws IOException {
		Patient p = store.retrieve(id);
		if( p == null ){
			return null;
		}
		MinimalPatient m = new MinimalPatient();
		// TODO convert birth date to HL7 fhir conformance (ony date, time in extension)
		m.birthDate = p.getBirthDate().toPartialIso8601();
		// TODO deceasedDate
		m.gender = convertSex(p.getSex());
		m.id = p.getId();
		return m;
	}

	@Override
	public void delete(String id) throws IOException {
		store.purge(id);
	}

	
}
