package org.aktin.cda.etl.xds;

import java.io.ByteArrayInputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.jws.WebService;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.ws.soap.MTOM;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.CDAException;
import org.aktin.cda.CDAParser;
import org.aktin.cda.CDAProcessor;
import org.aktin.cda.ExternalInterface;
import org.aktin.cda.UnsupportedTemplateException;
import org.aktin.cda.Validator;

import ihe.iti.xds_b._2007.DocumentRepositoryPortType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType;
import ihe.iti.xds_b._2007.ProvideAndRegisterDocumentSetRequestType.Document;
import ihe.iti.xds_b._2007.RetrieveDocumentSetRequestType;
import ihe.iti.xds_b._2007.RetrieveDocumentSetResponseType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.ExtrinsicObjectType;
import oasis.names.tc.ebxml_regrep.xsd.rim._3.IdentifiableType;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryError;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryErrorList;
import oasis.names.tc.ebxml_regrep.xsd.rs._3.RegistryResponseType;

/**
 * Implementation of document repository.
 * @see <a href="http://wiki.ihe.net/index.php?title=XDS.b_Implementation#Example_Provide_and_Register_Document_Set-b_transaction">IHE Example</a>
 * @see <a href="http://wiki.ihe.net/index.php?title=Annotated_ProvideAndRegister.b_Transaction">Example with annotated transactions</a> 
 * @author R.W.Majeed
 *
 */
//this binds the SEI to the SIB
@WebService(
		endpointInterface = "ihe.iti.xds_b._2007.DocumentRepositoryPortType", 
		targetNamespace="urn:ihe:iti:xds-b:2007", 
		serviceName="DocumentRepository_Service")
@MTOM(enabled=true)
public class DocumentRepository implements DocumentRepositoryPortType, ExternalInterface {
	private static final Logger log = Logger.getLogger(DocumentRepository.class.getName());
	private Validator validator;
	private CDAParser parser;
	private CDAProcessor processor;
	
	public DocumentRepository(){
		this.parser = new CDAParser();
	}
	@Override
	public RegistryResponseType documentRepositoryProvideAndRegisterDocumentSetB(
			ProvideAndRegisterDocumentSetRequestType body) {
		if( body.getSubmitObjectsRequest() == null ){
			log.warning("SubmitObjectRequest is null");
		}else if( body.getSubmitObjectsRequest().getRegistryObjectList() == null ){
			log.warning("SubmitObjectRequest.RegistryObjectList is null");
		}
		// The inner wrapper, RegistryObjectList, contains the actual metadata.
		// All submissions must include a Submission Set object. 
		
		// Check mime type for stable document
		for( JAXBElement<? extends IdentifiableType> ident : body.getSubmitObjectsRequest().getRegistryObjectList().getIdentifiable() ){
			if( ident.getDeclaredType() == ExtrinsicObjectType.class ){
				ExtrinsicObjectType e = (ExtrinsicObjectType)ident.getValue();
				if( e.getObjectType().equals("urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1") ){
					// stable document
					if( !"text/xml".equals(e.getMimeType()) ){
						// TODO error, mime type should be text/xml
					}
				}
				log.info("ExtrinsicObject: id="+e.getId());
				log.info("\tobjectType: "+e.getObjectType());
				log.info("\tmimeType: "+e.getMimeType());
				log.info("\tstatus: "+e.getStatus());
			}
		}
		if( body.getDocument().isEmpty() ){
			return createErrorResponse(XDSConstants.ERR_DOC_MISSING, "Need exactly one document");
		}else if( body.getDocument().size() > 1 ){
			return createErrorResponse(XDSConstants.ERR_REPO_ERROR, "Please submit exactly one document at a time");
		}
		Document doc = body.getDocument().get(0);
		log.info("Found document with id="+doc.getId()+" and length="+doc.getValue().length);
		RegistryErrorList errorList = new RegistryErrorList();
		boolean isValid;
		Source xml = new StreamSource(new ByteArrayInputStream(doc.getValue()));
		org.w3c.dom.Document cda;
		String templateId, documentId;
		try {
			cda = parser.buildDOM(xml);
			templateId = parser.extractTemplateId(cda);
			documentId = parser.extractDocumentId(cda);
			synchronized( validator ){
				isValid = validator.validate(cda, templateId, new ValidationErrorsToRegistryError(errorList));
			}
		} catch (TransformerException e) {
			// happens if the source document is not well formed
			return createErrorResponse(XDSConstants.ERR_DOC_INVALID_CONTENT, "Error while processing document", e);
		} catch (XPathExpressionException e) {
			log.log(Level.WARNING, "Unexpected error during validation", e);
			return createErrorResponse(XDSConstants.ERR_REPO_ERROR, "Internal error", e);
		} catch( UnsupportedTemplateException e ){
			log.log(Level.WARNING, "Unsupported template", e);
			return createErrorResponse(XDSConstants.ERR_DOC_INVALID_CONTENT, "Template not supported: "+e.getTemplateId());
		}

		RegistryResponseType resp = new RegistryResponseType();

		if( isValid ){
			// extract patient id, encounter id, document id
			try {
				// check arguments/valid id
				//ids = parser.extractIDs(cda);
				// TODO compare to IDs from XDS call
				// process document (XXX catch errors)
				String[] patientId = parser.extractPatientId(cda);
				String[] encounterId = parser.extractEncounterId(cda);
				
				processor.createOrUpdate(cda, documentId, templateId, patientId, encounterId);
				resp.setStatus(XDSConstants.RESPONSE_SUCCESS);
			} catch (CDAException e) {
				log.log(Level.WARNING, "Unable to import CDA", e);
				// add cause and suppressed exceptions to error response
				// might be too many suppressed exceptions, only add the cause
				Throwable cause = e.getCause();
				if( null == cause )cause = e;
				return createErrorResponse(XDSConstants.ERR_REPO_ERROR, "Error during import of CDA. See server log", cause);
			} catch (XPathExpressionException e) {
				log.log(Level.WARNING, "Unable to extract patient or encounter id", e);
				return createErrorResponse(XDSConstants.ERR_REPO_ERROR, "Error during import of CDA. See server log", e);
			}
		}else{
			// failed
			resp.setStatus(XDSConstants.RESPONSE_FAILURE);

//			RegistryError re = new RegistryError();
//			re.setSeverity(XDSConstants.SEVERITY_ERROR);
//			re.setCodeContext("Validation failed"); // free error message
//			re.setErrorCode(XDSConstants.ERR_DOC_INVALID_CONTENT);

			// errorCode is a text code taken from Table 4.1-11 Error Codes in Technical Framework volume 3
			errorList.setHighestSeverity(XDSConstants.SEVERITY_ERROR);
			resp.setRegistryErrorList(errorList);			
		}

		return resp;
	}

	@Override
	public RetrieveDocumentSetResponseType documentRepositoryRetrieveDocumentSet(RetrieveDocumentSetRequestType body) {
		RetrieveDocumentSetResponseType resp = new RetrieveDocumentSetResponseType();
		RegistryResponseType rr = new RegistryResponseType();
		
		// follow IHE
		rr.setStatus(XDSConstants.RESPONSE_FAILURE);
		RegistryError re = new RegistryError();
		re.setSeverity(XDSConstants.SEVERITY_ERROR);
		re.setErrorCode(XDSConstants.ERR_REPO_ERROR);
		RegistryErrorList rel = new RegistryErrorList();
		rel.getRegistryError().add(re);
		
		resp.setRegistryResponse(rr);
		return resp;
	}

	public static RegistryResponseType createErrorResponse(String code, String message, Throwable... errors){
		RegistryResponseType resp = new RegistryResponseType();
		// failure
		resp.setStatus(XDSConstants.RESPONSE_FAILURE);
		RegistryError re = new RegistryError();
		re.setSeverity(XDSConstants.SEVERITY_ERROR);
		re.setCodeContext(message); // free error message
		
		// errorCode is a text code taken from Table 4.1-11 Error Codes in Technical Framework volume 3
		re.setErrorCode(code);
		RegistryErrorList rel = new RegistryErrorList();
		rel.getRegistryError().add(re);
		// additional exceptions
		for( Throwable error : errors ){
			re = new RegistryError();
			re.setSeverity(XDSConstants.SEVERITY_ERROR);
			re.setErrorCode(code); // or use XDSConstants.ERR_REPO_ERROR ?
			re.setCodeContext(error.getMessage());
			rel.getRegistryError().add(re);
		}

		resp.setRegistryErrorList(rel);
		return resp;
	}
	@Inject
	@Override
	public void setValidator(Validator validator) {
		this.validator = validator;
	}
	@Inject
	@Override
	public void setProcessor(CDAProcessor processor) {
		this.processor = processor;
	}
}
