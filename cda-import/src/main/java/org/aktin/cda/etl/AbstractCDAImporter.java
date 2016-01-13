package org.aktin.cda.etl;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.function.Consumer;

import javax.xml.bind.JAXBException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
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

import de.sekmi.histream.Observation;
import de.sekmi.histream.ObservationFactory;
import de.sekmi.histream.ObservationSupplier;
import de.sekmi.histream.io.GroupedXMLReader;

/**
 * Abstract CDA importer. Transforms the CDA document into HIStream stream of observations.
 * 
 * @author R.W.Majeed
 *
 */
public abstract class AbstractCDAImporter implements CDAProcessor{
	private Transformer cdaToDataWarehouse;
	private XMLInputFactory inputFactory;

	public AbstractCDAImporter() throws IOException {
		// create transformer
		TransformerFactory tf = TransformerFactory.newInstance();
		try( InputStream in = getClass().getResourceAsStream("/cda-eav.xsl") ){
			cdaToDataWarehouse = tf.newTransformer(new StreamSource(in));
		} catch (TransformerConfigurationException e) {
			throw new IOException(e);
		}
		
		// XML input factory
		inputFactory = XMLInputFactory.newInstance();
	}

	/**
 	 * transform CDA document to EAV XML in temporary file
	 * @param document CDA document
	 * @return temporary file containing the EAV XML
	 * @throws CDAException error
	 */
	protected Path transformToEAV(Document document) throws CDAException{
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
	 * Get the observation factory which will be used to create observations
	 * @return observation factory
	 */
	protected abstract ObservationFactory getObservationFactory();
	
	/**
	 * Get the function which will be used to insert observations
	 * @return observation inserter
	 */
	protected abstract Consumer<Observation> getObservationInserter();
	
	/**
	 * delete previous facts for this source id
 	 * TODO for different CDA modules, use different ID or sourceId
	 * @param sourceId source id
	 * @throws CDAException error
	 */
	protected abstract void deleteEAV(String sourceId) throws CDAException;
	
	protected GroupedXMLReader readEAV(InputStream xml) throws JAXBException, XMLStreamException{
		return new GroupedXMLReader(getObservationFactory(), inputFactory.createXMLStreamReader(xml));
	}
	/**
	 * parse EAV XML and insert into fact table
	 * @param file EAV XML file
	 * @throws CDAException error
	 */
	private void replaceEAV(Path file) throws CDAException{
		try( InputStream in = Files.newInputStream(file);
				GroupedXMLReader suppl = readEAV(in) ) 
		{
			String sourceId = suppl.getMeta(ObservationSupplier.META_SOURCE_ID);
			// delete source
			deleteEAV(sourceId);
			// insert facts
			suppl.stream().forEach(getObservationInserter());
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
		
		// parse EAV XML and insert into fact table
		replaceEAV(tempEAV);


		// remove temporary file
		try {
			Files.delete(tempEAV);
		} catch (IOException e) {
			throw new CDAException("Unable to delete EAV temp file", e);
		}
	}

}
