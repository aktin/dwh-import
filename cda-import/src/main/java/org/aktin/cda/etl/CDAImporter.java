package org.aktin.cda.etl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.PreDestroy;
import javax.inject.Singleton;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.aktin.cda.CDAException;

import de.sekmi.histream.Observation;
import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.i2b2.I2b2Inserter;
import de.sekmi.histream.i2b2.I2b2Visit;
import de.sekmi.histream.i2b2.PostgresPatientStore;
import de.sekmi.histream.i2b2.PostgresVisitStore;
import de.sekmi.histream.impl.ObservationFactoryImpl;

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
	private PostgresPatientStore patientStore;
	private PostgresVisitStore visitStore;
	private ObservationFactory factory;
	
	/**
	 * Construct a CDAImporter 
	 * @throws NamingException i2b2 data sources could not be found by their names
	 * @throws SQLException initisiation errors with the database
	 * @throws TransformerConfigurationException failed to initialise transformation
	 * @throws IOException unable to load CDA to ETL transformation script
	 */
	public CDAImporter() throws NamingException, SQLException, IOException {
		super();
		InitialContext ctx = new InitialContext();
		// also lookup SessionContext via (SessionContext)ctx.lookup("java:comp/EJBContext")

		// TODO where to store/get the configuration for this EJB???
		DataSource crcDS = (DataSource)ctx.lookup("java:/QueryToolDemoDS");
		//DataSource ontDS = (DataSource)ctx.lookup("java:/OntologyDemoDS");
		/* better approach: use i2b2 bootstrapDS to locate data source
		 * DataSource bootstrapDS = (DataSource)ctx.lookup("java:/CRCBootStrapDS");
		 * SELECT c_db_fullschema, c_db_datasource FROM i2b2hive.crc_db_lookup WHERE 
		 */
		try{
			Map<String, String> config = new HashMap<>();
			// configuration with 'project' property
			config.put("project", "AKTIN");
			inserter = new I2b2Inserter(crcDS, config);
			patientStore = new PostgresPatientStore(crcDS, config);
			visitStore = new PostgresVisitStore(crcDS, config);
		}catch( SQLException e ){
			// disconnect inserter and other resources 
			// if one the previous constructors fails
			close();
			throw e;
		}
		factory = new ObservationFactoryImpl(patientStore, visitStore);

	}

	/**
	 * delete previous facts for this encounter
 	 * TODO for different CDA modules, use different ID or sourceId
	 * @param encounterId encounter id
	 * @throws CDAException error
	 */
	@Override
	protected void deletePreviousEAV(String encounterId) throws CDAException{
		I2b2Visit visit = visitStore.findVisit(encounterId);
		if( visit != null ){
			// visit existing, drop previous facts
			try {
				inserter.purgeVisit(visit.getNum());
			} catch (SQLException e) {
				throw new CDAException("Unable to delete previous EAV facts", e);
			}
		}
	}

	@PreDestroy // needed for the EJB container to call this method
	@Override
	public void close() {
		if( inserter != null )try {
			inserter.close();
		} catch (IOException e) {
			log.log(Level.WARNING, "Error while closing inserter", e);
		}
		if( visitStore != null )try {
			visitStore.close();
		} catch (IOException e) {
			log.log(Level.SEVERE, "Error while closing visit store", e);
		}
		if( patientStore != null )try {
			patientStore.close();
		} catch (IOException e) {
			log.log(Level.SEVERE, "Error while closing patient store", e);
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

}
