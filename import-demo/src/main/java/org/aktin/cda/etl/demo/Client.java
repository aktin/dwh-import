package org.aktin.cda.etl.demo;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.aktin.cda.etl.xds.XDSConstants;

import ihe.iti.xds_b._2007.DocumentRepositoryPortType;
import ihe.iti.xds_b._2007.DocumentRepositoryService;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType.Document;
import oasis.names.tc.ebxml_regrep.xsd.lcm._3.SubmitObjectsRequest;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExternalIdentifierType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExtrinsicObjectType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.InternationalStringType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.LocalizedStringType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ObjectFactory;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.RegistryObjectListType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.RegistryPackageType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.SlotType1;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ValueListType;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;

/**
 * Client code to access the FHIR and XDS services
 * 
 * @author R.W.Majeed
 *
 */
public class Client {

	/**
	 * Main method to submit documents
	 * 
	 * @param args command line arguments
	 */
	public static void main(String[] args){
		// TODO implement
	}
	
	/**
	 * Transfers all data from input stream to output stream
	 * 
	 * @param inputStream source
	 * @param outputStream destination
	 * @throws IOException io errors
	 */
	public static void transfer(InputStream inputStream, OutputStream outputStream) throws IOException{
		byte[] buffer = new byte[10*1024];
		int count;
		while( (count = inputStream.read(buffer)) != -1 ){
			outputStream.write(buffer,0,count);
		}
	}

	/**
	 * Submit a CDA document to the AKTIN FHIR interface
	 * 
	 * @param fhirUrl URL of the AKTIN FHIR interface. E.g. http://server.name/aktin/fhir/Binary
	 * @param document CDA document to submit
	 * @return HTTP connection with response status and response/error stream
	 * @throws IOException any errors during HTTP transfer
	 */
	public static HttpURLConnection submitToFHIR(URL fhirUrl, InputStream document) throws IOException{
		URL url = fhirUrl;
		HttpURLConnection uc = (HttpURLConnection)url.openConnection();
		uc.setDoInput(true);
		uc.setDoOutput(true);
		uc.addRequestProperty("Accept","text/xml");
		uc.addRequestProperty("Content-type", "text/xml");
		// set method
		uc.setRequestMethod("PUT");
		uc.connect();

		// write example document
		OutputStream put = uc.getOutputStream();
		Client.transfer(document,put);
		put.close();

		return uc;
	}
	
	private static ExternalIdentifierType createExternalIdentifier(String externalId, String idScheme, String rimNameString, String submissionSet, String localSymbol){
		ExternalIdentifierType et = new ExternalIdentifierType();
		//  labels the first ExternalIdentifier as a Submission Set UniqueID
		et.setIdentificationScheme(idScheme);
		// can choose unique ID here!?
		et.setValue(externalId); 
		// redundantly documents what major object this attribute belong to
		et.setRegistryObject(submissionSet);
		et.setId(localSymbol); // requires an id attribute
		// the Name structure is required as shown
		InternationalStringType rimName = new InternationalStringType();
		LocalizedStringType rimNameId = new LocalizedStringType();
		rimNameId.setValue(rimNameString);
		rimName.getLocalizedString().add(rimNameId);
		et.setName(rimName);
		et.setObjectType(XDSConstants.EBRIM_EXTERNAL_IDENT);
		return et;
	}
	/**
	 * Submit a CDA document to the AKTIN XDS.b interface via the
	 * provide and register document SOAP API.
	 * <p>
	 * The code was written by following the annotated example
	 * available at <a href="http://wiki.ihe.net/index.php?title=Annotated_ProvideAndRegister.b_Transaction">IHE Wiki annotated example</a>
	 *   
	 * @param xdsUrl URL of the AKTIN XDS.b interface. E.g. http://server.name/aktin/xds.b?wsdl
	 * @param document CDA document to submit
	 * @param uniqueId unique id for XDS metadata
	 * @param patientId patient id for XDS metadata
	 * @param sourceId source id for XDS metadata
	 * @return registry response
	 * @throws IOException IO errors during transfer
	 */
	public static RegistryResponseType submitToXDSb(URL xdsUrl, InputStream document, String uniqueId, String patientId,String sourceId) throws IOException{
		DocumentRepositoryService service = new DocumentRepositoryService(xdsUrl);
		DocumentRepositoryPortType soap = service.getPort(DocumentRepositoryPortType.class);

		RegistryResponseType resp;
		SubmitObjectsRequest req = new SubmitObjectsRequest();
		// The inner wrapper, RegistryObjectList, contains the actual metadata.
		// All submissions must include a Submission Set object. 
		RegistryPackageType t = new RegistryPackageType();

		final String submissionSetId = "SubmissionSet1";// symbolic id (free to choose), 
		t.setId(submissionSetId); 
		// if using symbolic id, uuid will be generated by the registry
		
		// The Submission Set has a single Slot-code attribute: 
		// submissionTime which is required. 
		SlotType1 submissionTime = new SlotType1();
		submissionTime.setName("submissionTime");
		ValueListType vl = new ValueListType();
		// need custom date format, e.g. 20041225235050
		SimpleDateFormat xdsTimeFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String ts = xdsTimeFormat.format(new Date());
		vl.getValue().add(ts);
		submissionTime.setValueList(vl);
		t.getSlot().add(submissionTime);

		
		RegistryObjectListType rol = new RegistryObjectListType();
		// helper to create JAXBElements for RIM Objects
		ObjectFactory of = new ObjectFactory();
		
		rol.getIdentifiable().add(of.createRegistryObject(t));
		
		ExternalIdentifierType et;
		// A submission set requires 3 identifiers: uniqueID, PatientID, and sourceID 
		// which are encoded as ebRIM ExternalIdentifier attributes. 

		// 1. uniqueId
		et = createExternalIdentifier(uniqueId, XDSConstants.UUID_UNIQUEID_EXTERNAL_IDENT, XDSConstants.RIM_SUBMISSIONSET_UNIQUEID, submissionSetId, "id_13");
		rol.getIdentifiable().add(of.createExternalIdentifier(et));
		// 2. sourceId
		et = createExternalIdentifier(sourceId, XDSConstants.UUID_SOURCEID_EXTERNAL_IDENT, XDSConstants.RIM_SUBMISSIONSET_SOURCEID, submissionSetId, "id_14");
		rol.getIdentifiable().add(of.createExternalIdentifier(et));
		// 3. patientId
		et = createExternalIdentifier(patientId, XDSConstants.UUID_PATIENTID_EXTERNAL_IDENT, XDSConstants.RIM_SUBMISSIONSET_PATIENTID, submissionSetId, "id_15");
		rol.getIdentifiable().add(of.createExternalIdentifier(et));
		
		// Next is the Document Entry object 
		// which is constructed from an ebRIM ExtrinsicObject object.
		// there is a one-to-one relationship between Document Entry objects 
		// and actual documents attached through the MTOM/XOP encoding. 
		// The id attribute is used to connect the ExtrinsicObject to the Mime Part.
		ExtrinsicObjectType eo = new ExtrinsicObjectType();
		eo.setObjectType(XDSConstants.UUID_DOCUMENT_STABLE);
		eo.setMimeType("text/xml");
		final String docId = "doc01"; // local symbolic id
		eo.setId(docId); // document id
		eo.getSlot(); // actually requires the following ebRIM slots: creationTime, languageCode, sourcePatientId
		// we will ignore that for now
		/*  	<rim:Slot name="creationTime">
                    <rim:ValueList>
                        <rim:Value>20051224</rim:Value>
                    </rim:ValueList>
                </rim:Slot>
                <rim:Slot name="languageCode">
                    <rim:ValueList>
                        <rim:Value>en-us</rim:Value>
                    </rim:ValueList>
                </rim:Slot>
                                <rim:Slot name="sourcePatientId">
                    <rim:ValueList>
                        <rim:Value>89765a87b^^^&3.4.5&ISO</rim:Value>
                    </rim:ValueList>
                </rim:Slot>
		*/
		rol.getIdentifiable().add(of.createExtrinsicObject(eo));
		
		// add to request
		req.setRegistryObjectList(rol);
		
		ProvideAndRegisterDocumentSetRequestType arg = new ProvideAndRegisterDocumentSetRequestType();
		req.setId("testid"); // id for request
		arg.setSubmitObjectsRequest(req);
		
		Document doc = new Document();
		doc.setId(docId);
		
		// TODO possible to use stream instead of in-memory array
		ByteArrayOutputStream bs = new ByteArrayOutputStream();
		transfer(document, bs);
		
		doc.setValue(bs.toByteArray());
		arg.getDocument().add(doc);
		
		resp = soap.documentRepositoryProvideAndRegisterDocumentSetB(arg);
		return resp;
	}
}
