package org.aktin.cda.etl;

import java.io.Flushable;
import java.io.IOException;
import java.sql.SQLException;
import java.time.ZoneId;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.aktin.Preferences;
import org.aktin.cda.CDAException;
import org.aktin.cda.CDAStatus;
import org.aktin.cda.CDASummary;
import org.aktin.cda.DocumentNotFoundException;
import org.aktin.dwh.Anonymizer;
import org.aktin.dwh.PreferenceKey;
import org.w3c.dom.Document;

import de.sekmi.histream.Observation;
import de.sekmi.histream.ObservationException;
import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.i2b2.DataDialect;
import de.sekmi.histream.i2b2.I2b2Inserter;
import de.sekmi.histream.i2b2.I2b2Visit;
import de.sekmi.histream.i2b2.PostgresVisitStore;

/**
 * CDA importer pojo EJB. Processed CDA documents are loaded into
 * the i2b2 data warehouse.
 * 
 * @author R.W.Majeed
 */
@Singleton
public class CDAImporter extends AbstractCDAImporter implements AutoCloseable{
	private static final Logger log = Logger.getLogger(CDAImporter.class.getName());
	private I2b2Inserter inserter;
	private ObservationFactory factory;
	private ZoneId localZone;
	private PostgresVisitStore visitStore;

	/**
	 * Construct a CDAImporter
	 * @param factory observation factory
	 * @param prefs preferences
	 * @param anonymizer anonymizer interface
	 * @throws NamingException i2b2 data sources could not be found by their names
	 * @throws SQLException initisiation errors with the database
	 * @throws IOException unable to load CDA to ETL transformation script
	 */
	@Inject // TODO change to ObservationFactory and see if this works
	public CDAImporter(ObservationFactory factory, Preferences prefs, Anonymizer anonymizer) throws NamingException, SQLException, IOException {
		super(anonymizer);
		this.factory = factory;
		this.visitStore = (PostgresVisitStore)factory.getExtension(I2b2Visit.class);
		this.localZone = ZoneId.of(prefs.get(PreferenceKey.timeZoneId));
		log.info("Default timezone for CDA documents: "+localZone);
		InitialContext ctx = new InitialContext();
		// also lookup SessionContext via (SessionContext)ctx.lookup("java:comp/EJBContext")

		// read/inject preferences via dwh-api
		String dsName = prefs.get(PreferenceKey.i2b2DatasourceCRC);//"java:/QueryToolDemoDS";
		log.info("Connecting to i2b2 database via "+dsName);
		DataSource crcDS = (DataSource)ctx.lookup(dsName);
		//DataSource ontDS = (DataSource)ctx.lookup("java:/OntologyDemoDS");
		/* better approach: use i2b2 bootstrapDS to locate data source
		 * DataSource bootstrapDS = (DataSource)ctx.lookup("java:/CRCBootStrapDS");
		 * SELECT c_db_fullschema, c_db_datasource FROM i2b2hive.crc_db_lookup WHERE 
		 */
		// data dialect
		DataDialect dd = new DataDialect();
		try{
			inserter = new I2b2Inserter();
			inserter.open(crcDS.getConnection(), dd);
		}catch( SQLException e ){
			// disconnect inserter and other resources 
			// if one the previous constructors fails
			close();
			throw e;
		}

		//inserter.setErrorHandler(handler);
	}

	/**
	 * delete previous facts for this source
 	 * TODO does this work for different CDA modules?
	 * @param sourceId source id
	 * @throws CDAException error
	 */
	@Override
	protected boolean deleteEAV(String sourceId) throws CDAException{
		// drop previous facts
		try {
			if( true == inserter.purgeSource(sourceId) ){
				log.info("Deleted previous facts for source="+sourceId);
				return true;
			}else{
				log.info("No previous facts to delete for source="+sourceId);
				return false;
			}
		} catch (SQLException e) {
			throw new CDAException("Unable to delete previous EAV facts", e);
		}
	}

	@PreDestroy // needed for the EJB container to call this method
	@Override
	public void close() {
		log.info("Closing connections to i2b2 database..");
		if( inserter != null )try {
			inserter.close();
		} catch (IOException e) {
			log.log(Level.WARNING, "Error while closing inserter", e);
		}
	}

	@Override
	protected ObservationFactory getObservationFactory() {
		return factory;
	}

	@Override
	protected Consumer<Observation> getObservationInserter() {
		return inserter;
	}

	private void encounterPatientMerge(String documentId, String[] patientId, String[] encounterId) {
		// extract encounter id, patient id. 
		// if encounter exists and has different patient assigned, delete all facts for the encounter id. Then allow reassignment of new patient id
		String encId = getAnonymizer().calculateEncounterPseudonym(encounterId[0], encounterId[1]);
		String patId = getAnonymizer().calculatePatientPseudonym(patientId[0], patientId[1]);
		log.info("Using patid="+patId+", encid="+encId+", docid="+documentId);
		I2b2Visit visit = visitStore.findVisit(encId);
		if( false == patId.equals(visit.getPatientId()) ) {
			log.warning("Encounter "+encId+" assigned different patient "+patId);
			// delete all facts for the encounter
			try {
				inserter.purgeVisit(visit.getNum());
			} catch (SQLException e) {
				log.log(Level.WARNING,"Failed to purge facts for visit "+visit.getNum(), e);
			}
			// update patient id
			visit.setPatientId(patId);
		}
		
	}
	@Override
	public synchronized CDAStatus createOrUpdate(Document document, String documentId, String templateId, String[] patientId, String[] encounterId)
			throws CDAException {

		encounterPatientMerge(documentId, patientId, encounterId);
		
		final List<ObservationException> insertErrors = new LinkedList<>();
		inserter.setErrorHandler(insertErrors::add);
		// process document
		CDAStatus status = null;
		try{
			status = super.createOrUpdate(document, documentId, templateId, patientId, encounterId);
		}finally{
			inserter.setErrorHandler(null);
			inserter.resetErrorCount();
		}
		if( !insertErrors.isEmpty() ){
			CDAException e = new CDAException("Unable to insert facts", insertErrors.remove(0));
			for( ObservationException more : insertErrors ){
				e.addSuppressed(more);
				// TODO maybe add only limited number of errors
			}
			throw e;
		}
		// flush after each document
		try {
			((Flushable)factory).flush();
		} catch (IOException e) {
			log.log(Level.SEVERE, "Unable to flush observation factory", e);
		}
		return status;
	}

	@Override
	public void delete(String documentId) throws DocumentNotFoundException, CDAException {
		throw new UnsupportedOperationException();
	}

	@Override
	public Iterator<CDASummary> search(String patientId, String encounterId) {
		throw new UnsupportedOperationException();
	}

	@Override
	public CDASummary get(String documentId) {
		throw new UnsupportedOperationException();
	}

	@Override
	protected ZoneId getDefaultZoneId() {
		return localZone;
	}

}
