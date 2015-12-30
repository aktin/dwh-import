package org.aktin.cda.etl;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.PreDestroy;
import javax.inject.Singleton;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import javax.xml.bind.JAXBException;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.i2b2.I2b2Inserter;
import de.sekmi.histream.i2b2.I2b2Visit;
import de.sekmi.histream.i2b2.PostgresPatientStore;
import de.sekmi.histream.i2b2.PostgresVisitStore;
import de.sekmi.histream.impl.ObservationFactoryImpl;
import de.sekmi.histream.io.GroupedXMLReader;

/**
 * CDA importer pojo EJB. Processed CDA documents are loaded into
 * the i2b2 data warehouse.
 * 
 * @author R.W.Majeed
 */
@Singleton
public class CDAImporter implements CDAProcessor, AutoCloseable{
	private static final Logger log = Logger.getLogger(CDAImporter.class.getName());
	private I2b2Inserter inserter;
	private PostgresPatientStore patientStore;
	private PostgresVisitStore visitStore;
	private ObservationFactory factory;
	private Transformer cdaToDataWarehouse;
	
	/**
	 * Construct a CDAImporter 
	 * @throws NamingException i2b2 data sources could not be found by their names
	 * @throws SQLException initisiation errors with the database
	 * @throws TransformerConfigurationException failed to initialise transformation
	 * @throws IOException unable to load CDA to ETL transformation script
	 */
	public CDAImporter() throws NamingException, SQLException, TransformerConfigurationException, IOException {
		// create transformer
		TransformerFactory tf = TransformerFactory.newInstance();
		try( InputStream in = getClass().getResourceAsStream("/cda-eav.xsl") ){
			cdaToDataWarehouse = tf.newTransformer(new StreamSource(in));
		}

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
 	 * transform CDA document to EAV XML in temporary file
	 * @param document CDA document
	 * @return temporary file containing the EAV XML
	 * @throws CDAException error
	 */
	private Path transformToEAV(Document document) throws CDAException{
		Path tempEAV=null;
		try {
			tempEAV = Files.createTempFile("eav", null);
			StreamResult result = new StreamResult(tempEAV.toFile());
			cdaToDataWarehouse.transform(new DOMSource(document), result);
		} catch (IOException e) {
			throw new CDAException("Unable to create temp file", e);
		} catch (TransformerException e) {
			throw new CDAException("Unable to transform CDA to EAV", e);
		}
		return tempEAV;
	}

	/**
	 * delete previous facts for this encounter
 	 * TODO for different CDA modules, use different ID or sourceId
	 * @param encounterId encounter id
	 * @throws CDAException error
	 */
	private void deletePreviousEAV(String encounterId) throws CDAException{
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
	/**
	 * parse EAV XML and insert into fact table
	 * @param file EAV XML file
	 * @throws CDAException error
	 */
	private void loadEAV(Path file) throws CDAException{
		GroupedXMLReader suppl;
		try( InputStream in = Files.newInputStream(file) ) {
			suppl = new GroupedXMLReader(factory, (XMLStreamReader)null);
			suppl.stream().forEach(inserter);
			suppl.close();
		} catch (IOException e) {
			throw new CDAException("Unable to read EAV temp file: "+file, e);
		} catch (JAXBException | XMLStreamException e) {
			throw new CDAException("Unable to parse/insert EAV facts to database", e);
		}
	}
	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) throws CDAException{
		// transform CDA document to EAV XML in temporary file
		Path tempEAV = transformToEAV(document);
		
		// delete previous facts for this encounter		
		deletePreviousEAV(encounterId);
		
		// parse EAV XML and insert into fact table
		loadEAV(tempEAV);


		// remove temporary file
		try {
			Files.delete(tempEAV);
		} catch (IOException e) {
			throw new CDAException("Unable to delete EAV temp file", e);
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

}
