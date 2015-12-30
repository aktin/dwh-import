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

import org.aktin.cda.CDAProcessor;
import org.w3c.dom.Document;

import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.i2b2.I2b2Inserter;
import de.sekmi.histream.i2b2.I2b2Visit;
import de.sekmi.histream.i2b2.PostgresPatientStore;
import de.sekmi.histream.i2b2.PostgresVisitStore;
import de.sekmi.histream.impl.ObservationFactoryImpl;
import de.sekmi.histream.io.GroupedXMLReader;

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
		// TODO use HIStream connection to i2b2
		try{
			Map<String, String> config = new HashMap<>();
			inserter = new I2b2Inserter(crcDS, new HashMap<>());
			// TODO configuration with 'project' property
			
			// TODO disconnect inserter and other resources if one the following constructors fail
			patientStore = new PostgresPatientStore(crcDS, config);
			visitStore = new PostgresVisitStore(crcDS, config);
		}catch( SQLException e ){
			close();
			throw e;
		}
		factory = new ObservationFactoryImpl(patientStore, visitStore);

		//DataSource bootstrapDS = (DataSource)ctx.lookup("java:/CRCBootStrapDS");
		//bootstrapDS.getConnection();
		// TODO locate CRC project data source
		// SELECT c_db_fullschema, c_db_datasource FROM i2b2hive.crc_db_lookup WHERE 
	}

	@Override
	public void process(String patientId, String encounterId, String documentId, Document document) {
		// transform CDA document to EAV XML in temporary file
		Path tempEAV=null;
		try {
			tempEAV = Files.createTempFile("eav", null);
			StreamResult result = new StreamResult(tempEAV.toFile());
			cdaToDataWarehouse.transform(new DOMSource(document), result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TransformerException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// delete previous facts for this encounter
		I2b2Visit visit = visitStore.findVisit(encounterId);
		if( visit != null ){
			// visit existing, drop previous facts
			try {
				inserter.purgeVisit(visit.getNum());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// parse EAV XML and insert into fact table
		GroupedXMLReader suppl;
		try( InputStream in = Files.newInputStream(tempEAV) ) {
			suppl = new GroupedXMLReader(factory, (XMLStreamReader)null);
			suppl.stream().forEach(inserter);
			suppl.close();
		} catch (JAXBException | XMLStreamException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// remove temporary file
		try {
			Files.delete(tempEAV);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
