package org.aktin.cda.etl;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.ZoneId;
import java.util.Date;
import java.util.function.Consumer;

import javax.xml.bind.JAXBException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.CDAStatus;
import org.aktin.cda.CDAStatus.Status;
import org.aktin.cda.UnsupportedTemplateException;
import org.aktin.cda.etl.transform.Transformation;
import org.aktin.cda.etl.transform.TransformationFactory;
import org.aktin.dwh.Anonymizer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

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
	private TransformationFactory cdaToDataWarehouse;
	private XMLInputFactory inputFactory;

	public AbstractCDAImporter(Anonymizer anonymizer) throws IOException {
		// create transformer
		cdaToDataWarehouse = new TransformationFactory();
		cdaToDataWarehouse.setAnonymizer(anonymizer);
		// XML input factory
		inputFactory = XMLInputFactory.newInstance();
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
	 * Get the default zone id which will be used for timestamps without timezone offset
	 * @return zone id
	 */
	protected abstract ZoneId getDefaultZoneId();

	/**
	 * delete previous facts for this source id
 	 * TODO for different CDA modules, use different ID or sourceId
	 * @param sourceId source id
	 * @return true if records were deleted, false if there were no records to delete
	 * @throws CDAException error
	 */
	protected abstract boolean deleteEAV(String sourceId) throws CDAException;
	
	protected GroupedXMLReader readEAV(InputStream xml) throws JAXBException, XMLStreamException{
		return new GroupedXMLReader(getObservationFactory(), inputFactory.createXMLStreamReader(xml), getDefaultZoneId());
	}
	/**
	 * parse EAV XML and insert into fact table
	 * @param file EAV XML file
	 * @throws CDAException error
	 */
	private CDAStatus replaceEAV(Path file) throws CDAException{
		try( InputStream in = Files.newInputStream(file);
				GroupedXMLReader suppl = readEAV(in) ) 
		{
			String sourceId = suppl.getMeta(ObservationSupplier.META_SOURCE_ID);
			// delete source
			boolean deleted = deleteEAV(sourceId);
			// insert facts
			suppl.stream().forEach(getObservationInserter());
			
			CDAStatus.Status status;
			Descriptor desc = new Descriptor(sourceId);
			desc.lastModified = new Date();
			if( deleted ){
				status = Status.Updated;
			}else{
				status = Status.Created;
				desc.created = desc.lastModified;
			}
			
			// TODO use/write version
			return new CDAStatus(desc, status);
		} catch (IOException e) {
			throw new CDAException("Unable to read EAV temp file: "+file, e);
		} catch (JAXBException | XMLStreamException e) {
			throw new CDAException("Unable to parse/insert EAV facts to database", e);
		}
	}
	
	@Override
	public final Path transform(Document document, String templateId) throws CDAException, UnsupportedTemplateException{
		try {
			Element rootEl = (Element)document.getDocumentElement();
			Transformation t = cdaToDataWarehouse.getTransformation(rootEl.getNamespaceURI(), rootEl.getLocalName(), templateId);
			if( t == null ){
				throw new UnsupportedTemplateException(templateId);
			}
			return t.transformToEAV(document);
		} catch (TransformerException | TransformerFactoryConfigurationError | IOException e) {
			throw new CDAException("Transformation to EAV failed", e);
		}
	}
	protected Anonymizer getAnonymizer() {
		return cdaToDataWarehouse.getAnonymizer();
	}
	@Override
	public CDAStatus createOrUpdate(Document document, String documentId, String templateId, String[] patientId, String[] encounterId) throws CDAException{
		// not using provided patientId, encounterId, documentId
		// use IDs from EAV transformation result
		
		// transform CDA document to EAV XML in temporary file
		Path tempEAV = transform(document, templateId);
		
		CDAStatus status;
		try{
			// parse EAV XML and insert into fact table
			status = replaceEAV(tempEAV);

		}finally{
			// remove temporary file
			try {
				Files.delete(tempEAV);
			} catch (IOException e) {
				throw new CDAException("Unable to delete EAV temp file", e);
			}
		}
		
		return status;
	}

}
