package org.aktin.cda.etl;

import javax.inject.Inject;
import javax.inject.Singleton;

import de.sekmi.histream.i2b2.PostgresPatientStore;
import de.sekmi.histream.i2b2.PostgresVisitStore;
import de.sekmi.histream.impl.ObservationFactoryImpl;

@Singleton
public class ObservationFactoryEJB extends ObservationFactoryImpl {

	private PostgresPatientStore patientStore;
	private PostgresVisitStore visitStore;

	@Inject
	public ObservationFactoryEJB(PostgresPatientStore patientStore, PostgresVisitStore visitStore){
		super(patientStore, visitStore);
		this.patientStore = patientStore;
		this.visitStore = visitStore;
	}

	public void flush(){
		patientStore.flush();
		visitStore.flush();
	}
}
