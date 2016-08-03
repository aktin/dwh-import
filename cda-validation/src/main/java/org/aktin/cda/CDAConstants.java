package org.aktin.cda;


/**
 * CDA constants needed for the validation. Mainly XML namespaces.
 * 
 * @author R.W.Majeed
 *
 */
public class CDAConstants {
	public static final String SVRL_NS_URI = "http://purl.oclc.org/dsdl/svrl";
	public static final String HL7_NS_URI = "urn:hl7-org:v3";
	public static final String EAV_NS_URI = "http://sekmi.de/histream/ns/eav-data";
	public static final String CDA_NS_URI = HL7_NS_URI;
	public static final String XSL_NS_URI = "http://www.w3.org/1999/XSL/Transform";

	public static final String SVRL_NS_PREFIX = "svrl";
	public static final String HL7_NS_PREFIX = "hl7";
	public static final String CDA_NS_PREFIX = "cda";
	public static final String EAV_NS_PREFIX = "eav";
	public static final String XSL_NS_PREFIX = "xsl";
	
	/**
	 * XPath to the template id within a CDA document
	 */
	public static final String XPATH_CDA_TEMPLATE_ID = "/cda:ClinicalDocument/cda:templateId/@root";
	/**
	 * XPath to the document id within a CDA document. 
	 * This id should be globally unique for any two documents.
	 * 
	 */
	public static final String XPATH_CDA_DOCUMENT_ID = "/cda:ClinicalDocument/cda:setId/@root";


}
