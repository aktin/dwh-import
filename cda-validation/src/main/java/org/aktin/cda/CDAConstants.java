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
	public static final String CDA_NS_URI = HL7_NS_URI;

	public static final String SVRL_NS_PREFIX = "svrl";
	public static final String HL7_NS_PREFIX = "hl7";
	public static final String CDA_NS_PREFIX = "cda";
	
	/**
	 * XPaths to select IDs in ascending order of change probability.
	 * <p>
	 * First element will select the patient id, which will not change even
	 * for multiple visits.
	 * <p>
	 * Second will be the the visit id, which will not change with document updates
	 * (sometimes also called the set id)
	 * <p>
	 * Third the document version which changes with every submission of the same
	 * document. This can also be a time stamp.
	 */
	public static final String[] ID_TREE_XPATHS = new String[]{
			"ClinicalDocument/recordTarget/patientRole/id/@extension",
			"ClinicalDocument/setId@extension",
			"ClinicalDocument/versionNumber/@value",
	};

}
