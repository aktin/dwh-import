package org.aktin.cda.etl;

import java.io.IOException;
import java.util.Iterator;
import java.util.function.Consumer;

import javax.annotation.PreDestroy;
import javax.inject.Singleton;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDASummary;
import org.aktin.cda.DocumentNotFoundException;

import de.sekmi.histream.Observation;
import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.impl.ObservationFactoryImpl;
import de.sekmi.histream.impl.SimplePatientExtension;
import de.sekmi.histream.impl.SimpleVisitExtension;

@Singleton
public class CDAImporterMockUp extends AbstractCDAImporter implements Consumer<Observation>, AutoCloseable{
	private ObservationFactory factory;
	private int insertCount;

	public CDAImporterMockUp() throws IOException{
		super();
		System.out.println("CONSTRUCT CDAImporterMockUp");
		factory = new ObservationFactoryImpl(new SimplePatientExtension(), new SimpleVisitExtension());
		insertCount = 0;
	}

	@PreDestroy
	@Override
	public void close() {
		System.out.println("CLOSE CDAImporterMockUp (insertCount="+insertCount+")");
	}

	@Override
	protected ObservationFactory getObservationFactory() {
		return factory;
	}

	@Override
	protected Consumer<Observation> getObservationInserter() {
		return this;
	}

	@Override
	protected boolean deleteEAV(String sourceId) throws CDAException {
		System.out.println("DELETE EAV source="+sourceId);
		return true;
	}

	@Override
	public void accept(Observation t) {
		insertCount ++;
	}

	@Override
	public void delete(String documentId) throws DocumentNotFoundException, CDAException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Iterator<CDASummary> search(String patientId, String encounterId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CDASummary get(String documentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
