package org.aktin.cda.etl.demo;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import ihe.iti.xds_b._2007.DocumentRepositoryPortType;
import ihe.iti.xds_b._2007.DocumentRepositoryService;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType.Document;
import oasis.names.tc.ebxml_regrep.xsd.lcm._3.SubmitObjectsRequest;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExternalIdentifierType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExtrinsicObjectType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ObjectFactory;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.RegistryObjectListType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.RegistryPackageType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.SlotType1;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ValueListType;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;

public class Client {

	public static void main(String[] args){
		
	}
	
	public static void transfer(InputStream inputStream, OutputStream outputStream) throws IOException{
		byte[] buffer = new byte[10*1024];
		int count;
		while( (count = inputStream.read(buffer)) != -1 ){
			outputStream.write(buffer,0,count);
		}
	}

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
	
	public static RegistryResponseType submitToXDSb(URL xdsUrl, InputStream document) throws IOException{
		DocumentRepositoryService service = new DocumentRepositoryService(xdsUrl);
		DocumentRepositoryPortType soap = service.getPort(DocumentRepositoryPortType.class);

		RegistryResponseType resp;
		ProvideAndRegisterDocumentSetRequestType arg = new ProvideAndRegisterDocumentSetRequestType();
		SubmitObjectsRequest req = new SubmitObjectsRequest();
		// The inner wrapper, RegistryObjectList, contains the actual metadata.
		// All submissions must include a Submission Set object. 
		RegistryPackageType t = new RegistryPackageType();
		t.setId("SubmissionSet1"); // symbolic id, uuid will be generated by the registry
		
		// The Submission Set has a single Slot-code attribute: 
		// submissionTime which is required. 
		SlotType1 submissionTime = new SlotType1();
		submissionTime.setName("submissionTime");
		ValueListType vl = new ValueListType();
		vl.getValue().add("20041225235050");
		submissionTime.setValueList(vl);
		t.getSlot().add(submissionTime);

		RegistryObjectListType rol = new RegistryObjectListType();
		req.setRegistryObjectList(rol);
		
		// helper to create JAXBElements for RIM Objects
		ObjectFactory of = new ObjectFactory();
		
		rol.getIdentifiable().add(of.createRegistryObject(t));
		
		// A submission set requires 3 identifiers: uniqueID, PatientID, and sourceID 
		// which are encoded as ebRIM ExternalIdentifier attributes. 
		ExternalIdentifierType et = new ExternalIdentifierType();
		// TODO external identifiers
		rol.getIdentifiable().add(of.createExternalIdentifier(et));
		
		// Next is the Document Entry object 
		// which is constructed from an ebRIM ExtrinsicObject object.
		ExtrinsicObjectType eo = new ExtrinsicObjectType();
		eo.setObjectType("urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1");
		eo.setMimeType("text/xml");
		eo.setId("doc01"); // document id
		
		rol.getIdentifiable().add(of.createExtrinsicObject(eo));
		
		arg.setSubmitObjectsRequest(req);
		req.setId("testid");
		
		Document doc = new Document();
		doc.setId("laladoc");
		// TODO possible to use stream instead of in-memory array
		ByteArrayOutputStream bs = new ByteArrayOutputStream();
		transfer(document, bs);
		
		doc.setValue(bs.toByteArray());
		arg.getDocument().add(doc);
		
		resp = soap.documentRepositoryProvideAndRegisterDocumentSetB(arg);
		return resp;
	}
}
