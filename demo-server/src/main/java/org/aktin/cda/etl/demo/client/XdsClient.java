package org.aktin.cda.etl.demo.client;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
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
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryError;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryErrorList;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;


/**
 * XDS.b client application. 
 * Submit CDA documents to a XDS.b provide and register document SOAP endpoint.
 * 
 * @author R.W.Majeed
 *
 */
public class XdsClient {

	/**
	 * Main method to submit documents
	 * 
	 * @param args command line arguments
	 */
	public static void main(String[] args) {
		
		if( args.length != 5 ){
			// Print usage notice to stderr
			System.err.println("Usage: "+XdsClient.class.getName()+" <service-url> <uniqueid> <patientid> <sourceid> <file-to-submit>");
			return;
		}
		
		RegistryResponseType response = null;
		
		File xml = new File(args[4]);
		try( InputStream in = new FileInputStream(xml) ){
			String encoding = Util.findXmlEncoding(xml);
			if( encoding == null ){
				System.err.println("Unable to determine file encoding, using UTF-8");
				encoding = "UTF-8";
			}else{
				System.err.println("Determined file encoding "+encoding);
			}
			response = submitToXDSb(new URL(args[0]), in, encoding, args[1], args[2], args[3]);
		} catch (FileNotFoundException e) {
			System.err.println("File not found: "+args[1]);
		} catch (IOException e) {
			e.printStackTrace();
			System.err.println("Error while reading file "+args[1]);
		}
		
		if( response != null ){
			// no exception, print errors
			System.out.println("Status: "+response.getStatus());
			RegistryErrorList rel = response.getRegistryErrorList();
			if( rel != null && rel.getRegistryError().size() > 0 ){
				System.out.println("Error list:");
				int i=1;
				for( RegistryError re : rel.getRegistryError() ){
					System.out.println(i+"\tCode:"+re.getErrorCode());
					System.out.println(i+"\tSeverity:"+re.getSeverity());
					System.out.println(i+"\tLocation:"+re.getLocation());
					System.out.println(i+"\tContext:"+re.getCodeContext());
					System.out.println(i+"\tValue:"+re.getValue());
					i++;
				}
			}
		}

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
	 * @param charset document charset
	 * @param uniqueId unique id for XDS metadata
	 * @param patientId patient id for XDS metadata
	 * @param sourceId source id for XDS metadata
	 * @return registry response
	 * @throws IOException IO errors during transfer
	 */
	public static RegistryResponseType submitToXDSb(URL xdsUrl, InputStream document, String charset, String uniqueId, String patientId,String sourceId) throws IOException{
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
		if( charset == null ){
			eo.setMimeType("text/xml");
		}else{
			eo.setMimeType("text/xml; charset="+charset);
		}
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
		Util.transfer(document, bs);
		
		doc.setValue(bs.toByteArray());
		arg.getDocument().add(doc);
		
		resp = soap.documentRepositoryProvideAndRegisterDocumentSetB(arg);
		return resp;
	}
}
