package org.aktin.cda.etl.xds;

import java.util.logging.Logger;

import javax.jws.WebService;
import javax.xml.bind.JAXBElement;

import ihe.iti.xds_b._2007.DocumentRepositoryPortType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType.Document;
import ihe.iti.xds_b._2007.RetrieveDocumentSetRequestType;
import ihe.iti.xds_b._2007.RetrieveDocumentSetResponseType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExtrinsicObjectType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.IdentifiableType;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;

/**
 * Implementation of document repository.
 * @see <a href="http://wiki.ihe.net/index.php?title=XDS.b_Implementation#Example_Provide_and_Register_Document_Set-b_transaction">IHE Example</a>
 * @author Raphael
 *
 */
//this binds the SEI to the SIB
@WebService(endpointInterface = "ihe.iti.xds_b._2007.DocumentRepositoryPortType")
public class DocumentRepository implements DocumentRepositoryPortType {
	private static final Logger log = Logger.getLogger(DocumentRepository.class.getName());

	@Override
	public RegistryResponseType documentRepositoryProvideAndRegisterDocumentSetB(
			ProvideAndRegisterDocumentSetRequestType body) {
		for( JAXBElement<? extends IdentifiableType> ident : body.getSubmitObjectsRequest().getRegistryObjectList().getIdentifiable() ){
			if( ident.getDeclaredType() == ExtrinsicObjectType.class ){
				ExtrinsicObjectType e = (ExtrinsicObjectType)ident.getValue();
				log.info("ExtrinsicObject: id="+e.getId());
				log.info("\tobjectType: "+e.getObjectType());
				log.info("\tmimeType: "+e.getMimeType());
				log.info("\tstatus: "+e.getStatus());
			}
		}
		for( Document doc : body.getDocument() ){
			log.info("Found document with id="+doc.getId()+" and length="+doc.getValue().length);
		}
		RegistryResponseType resp = new RegistryResponseType();
		// TODO need namespace or types from ebxml?
		resp.setStatus("urn:oasis:names:tc:ebxml-regrep:ResponseStatusType:Success");
		// TODO Errors via	resp.getRegistryErrorList()
		return resp;
	}

	@Override
	public RetrieveDocumentSetResponseType documentRepositoryRetrieveDocumentSet(RetrieveDocumentSetRequestType body) {
		RetrieveDocumentSetResponseType resp = new RetrieveDocumentSetResponseType();
		RegistryResponseType rr = new RegistryResponseType();
		resp.setRegistryResponse(rr);
		rr.setStatus("FAIL!"); // TODO follow IHE
		//throw new UnsupportedOperationException();
		return resp;
	}

}
