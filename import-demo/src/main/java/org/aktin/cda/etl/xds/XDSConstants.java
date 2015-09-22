package org.aktin.cda.etl.xds;

/**
 * Error codes from IHE_ITI_TF_Vol3.pdf, Table 4.2.4.1-2: Error Codes
 * 
 * @author R.W.Majeed
 *
 */
public class XDSConstants {

	public static final String RESPONSE_FAILURE = "urn:oasis:names:tc:ebxml-regrep:ResponseStatusType:Failure";
	public static final String RESPONSE_SUCCESS = "urn:oasis:names:tc:ebxml-regrep:ResponseStatusType:Success";
	//public static final String RESPONSE_PARTIAL_SUCCESS = "urn:ihe:iti:2007:ResponseStatusType:PartialSuccess";
	
	public static final String SEVERITY_ERROR = "urn:oasis:names:tc:ebxml-regrep:ErrorSeverityType:Error";
	public static final String SEVERITY_WARNING = "urn:oasis:names:tc:ebxml-regrep:ErrorSeverityType:Warning";

	/** An XDR Recipient queued the document for future manual matching to a patient */
	public static final String ERR_DOC_QUEUED = "DocumentQueued";
	
	/** The recipient has rejected this submission because it detected that one of the documents does not match the metadata (e.g.,
	 *  formatCode) or has failed other requirements for the document content.
	 *  When the RegistryError element contains this error code , the @location shall contain the DocumentUniqueID of the document in error.
	 *  If multiple documents are in error, there shall be a separate RegistryError element for each document in error 
	 */
	public static final String ERR_DOC_INVALID_CONTENT = "InvalidDocumentContent";
	
	/** DocumentEntry exists in metadata with no corresponding attached document */
	public static final String ERR_DOC_MISSING = "XDSMissingDocument";

	/** MIME package contains MIME part with Content-Id header not found in metadata */
	public static final String ERR_DOC_META_MISSING = "XDSMissingDocumentMetadata";
	
	/** This warning is returned if extra metadata was present but not saved. */
	public static final String ERR_EXTRA_META_NOT_SAVED = "XDSExtraMetadataNotSaved";
	
	// irrelevant error codes:
	/*
	 * PartialAppendContentNotProcessed
	 * PartialFolderContentNotProcessed
	 * PartialReplaceContentNotProcessed
	 * PartialTransformNotProcessed
	 * PartialTransformReplaceNotProcessed
	 */
	public static final String ERR_MISSING_DOCUMENT_METADATA = "XDSMissingDocumentMetadata";
	
	/** This error is thrown when the patient Id is required to match and does not. 
	 * The codeContext shall indicate the value of the Patient Id and the nature of the conflict.
	 */
	public static final String ERR_PATID_DOESNOT_MATCH = "XDSPatientIdDoesNotMatch";
	public static final String ERR_NON_IDENTICAL_HASH = "XDSNonIdenticalHash";

	/**
	 * Internal Error
	 * The error codes XDSRegistryError or XDSRepositoryError shall be returned 
	 * if and only if a more detailed code is not available from this table for the 
	 * condition being reported.
	 * If one of these error codes is returned, the attribute codeContext shall contain 
	 * details of the error condition that may be implementation-specific.
	 */
	public static final String ERR_REG_ERROR = "XDSRegistryError";
	
	/** Too much activity */
	public static final String ERR_REG_BUSY = "XDSRegistryBusy";
	
	/**
	 * Repository was unable to access the Registry
	 */
	public static final String ERR_REG_NOT_AVAIL = "XDSRegistryNotAvailable";
	
	/**
	 * Error detected in metadata. 
	 * Actor name indicates where error was detected. 
	 * (Document Recipient uses Repository error). 
	 * codeContext indicates nature of problem.
	 */
	public static final String ERR_REG_METADATA_ERROR = "XDSRegistryMetadataError";
	

	/**
	 * Internal Error
	 * The error codes XDSRegistryError or XDSRepositoryError shall be returned 
	 * if and only if a more detailed code is not available from this table for the 
	 * condition being reported.
	 * If one of these error codes is returned, the attribute codeContext shall contain 
	 * details of the error condition that may be implementation-specific.
	 */
	public static final String ERR_REPO_ERROR = "XDSRepositoryError";

	/** Too much activity */
	public static final String ERR_REPO_BUSY = "XDSRepositoryBusy";
	public static final String ERR_REPO_OUT_OF_RESOURCES = "XDSRepositoryOutOfResources";
	
	/**
	 * Error detected in metadata. 
	 * Actor name indicates where error was detected. 
	 * (Document Recipient uses Repository error). 
	 * codeContext indicates nature of problem.
	 */
	public static final String ERR_REPO_METADATA_ERROR = "XDSRepositoryMetadataError";
	public static final String ERR_REPO_WRONG_UNIQUE_ID = "XDSRepositoryWrongRepositoryUniqueId";
	
	public static final String ERR_MISSING_REGISTRY_PACKAGE = "RegistryPackage missing";

	/**
	 * The document associated with the uniqueId is not available. 
	 * This could be because the document is not available, the requestor is not authorized 
	 * to access that document or the document is no longer available.
	 */
	public static final String ERR_DOCUMENT_UNIQUE_ID = "XDSDocumentUniqueIdError";
	
	// unique ids from 4.2.5.1 Submission Set Object UUIDs
	
	public static final String UUID_CLASS_SUBMISSIONSET = "urn:uuid:a54d6aa5-d40d-43f9-88c5-b4633d873bdd";
	public static final String UUID_CLASS_CONTENTTYPECODE = "urn:uuid:aa543740-bdda-424e-8c96-df4873be8500";
	public static final String UUID_PATIENTID_EXTERNAL_IDENT = "urn:uuid:6b5aea1a-874d-4603-a4bc-96a0a7b38446";
	public static final String UUID_UNIQUEID_EXTERNAL_IDENT = "urn:uuid:96fdda7c-d067-4183-912e-bf5ee74998a8";
	public static final String UUID_SOURCEID_EXTERNAL_IDENT = "urn:uuid:554ac39e-e3fe-47fe-b233-965d2a147832";
	
	//
	public static final String UUID_DOCUMENT_STABLE = "urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1";

	// other constants
	public static final String RIM_SUBMISSIONSET_UNIQUEID = "XDSSubmissionSet.uniqueId";
	public static final String RIM_SUBMISSIONSET_SOURCEID = "XDSSubmissionSet.sourceId";
	public static final String RIM_SUBMISSIONSET_PATIENTID = "XDSSubmissionSet.patientId";
	
	public static final String EBRIM_EXTERNAL_IDENT = "urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier";
}
