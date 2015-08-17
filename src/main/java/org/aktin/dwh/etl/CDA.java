package org.aktin.dwh.etl;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;

import net.sf.saxon.lib.NamespaceConstant;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class CDA implements Comparator<Document> {
	
	public Document CDA;
	private XPath xPath;
	
	//Comments & ToDos for XPath Checks
	//---------------------------------------
	//codeSystem mostly fixed => some unnecessary checks
	//effectiveTime nullFlavors incomplete
	//nullFlavors for "special code locations" probably incomplete => check after CDA release
	//check if all negations are included
	
	private final String[] XChecks = new String[] {                       
			"/cda:ClinicalDocument/cda:id/@root",
			"/cda:ClinicalDocument/cda:id/@extension",
			"/cda:ClinicalDocument/cda:effectiveTime/@value",
			"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@root",
			"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension",
			"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode/@code",
			"/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value",
			//add scopingOrganization? 
			"/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime/cda:low/@value",
			"/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:effectiveTime/cda:high/@value",
			"/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time/cda:low/@value",
			"/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:time/cda:high/@value",
			"/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value",
			"/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:high/@value",
			"/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode/@code",
			"/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:dischargeDispositionCode/@codeSystem",
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@code",  //<templateId root="1.2.276.0.76.10.4038"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:participant/cda:participantRole/cda:code/@codeSystem",  //<templateId root="1.2.276.0.76.10.4038"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:effectiveTime/cda:low/@value",  //<templateId root="1.2.276.0.76.10.4039"/> & <templateId root="1.2.276.0.76.10.4072"/> & <templateId root="1.2.276.0.76.10.4065"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:effectiveTime/cda:high/@value",  //<templateId root="1.2.276.0.76.10.4039"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:effectiveTime/cda:low/@value",  //<templateId root="1.2.276.0.76.10.4040"/> & <templateId root="1.2.276.0.76.10.4073"/> & <templateId root="1.2.276.0.76.10.4049"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:effectiveTime/cda:high/@value",  //<templateId root="1.2.276.0.76.10.4049"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:value/@code",  //<templateId root="1.2.276.0.76.10.4040"/> & <templateId root="1.2.276.0.76.10.4073"/> & <templateId root="1.2.276.0.76.10.4049"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:value/@codeSystem",  //<templateId root="1.2.276.0.76.10.4040"/> & <templateId root="1.2.276.0.76.10.4073"/> & <templateId root="1.2.276.0.76.10.4049"/>		
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:value/cda:qualifier/cda:value/@code",  //<templateId root="1.2.276.0.76.10.4073"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:value/cda:qualifier/cda:value/@codeSystem",  //<templateId root="1.2.276.0.76.10.4073"/>  --fixed		
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:entryRelationship/cda:observation/cda:value/@value",  //<templateId root="1.2.276.0.76.10.4034"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:entryRelationship/cda:observation/cda:value/@unit", //<templateId root="1.2.276.0.76.10.4034"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:entryRelationship/cda:observation/cda:value/@nullFlavor", //<templateId root="1.2.276.0.76.10.4034"/>			
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:targetSiteCode/@code", //<templateId root="1.2.276.0.76.10.4046"/> & <templateId root="1.2.276.0.76.10.4046"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:targetSiteCode/@codeSystem", //<templateId root="1.2.276.0.76.10.4046"/> & <templateId root="1.2.276.0.76.10.4046"/> --fixed					
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code", //<templateId root="1.2.276.0.76.10.4066"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:entryRelationship/cda:observation/cda:participant/cda:participantRole/cda:playingEntity/cda:code/@code", //<templateId root="1.2.276.0.76.10.4066"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:procedure/cda:entryRelationship/cda:observation/cda:value/@code",  //<templateId root="1.2.276.0.76.10.4069"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:procedure/cda:entryRelationship/cda:observation/cda:value/@codeSystem",  //<templateId root="1.2.276.0.76.10.4069"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:procedure/cda:entryRelationship/cda:observation/cda:value/@nullFlavor",  //<templateId root="1.2.276.0.76.10.4069"/>			
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:code/@code",  //<templateId root="1.2.276.0.76.10.3056"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:code/@codeSystem",  //<templateId root="1.2.276.0.76.10.3056"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:reference/cda:externalDocument/cda:code/@code",  //<templateId root="1.2.276.0.76.10.4071"/>
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:act/cda:reference/cda:externalDocument/cda:code/@codeSystem",  //<templateId root="1.2.276.0.76.10.4071"/>		
			
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:value/@code", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:value/@codeSystem", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:code/@code", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:code/@codeSystem", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:value/@value", //All entries in "default location"	
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:value/@unit", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:value/@nullFlavor", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:effectiveTime/cda:high/@value", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:effectiveTime/cda:low/@value", //All entries in "default location"
			"/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:entry/cda:observation/cda:effectiveTime/@value" //All entries in "default location"
			
	};
	
	private static final Logger log = Logger.getLogger(CDA.class.getName());
	
	public CDA (File xml_file) {
		try {
			this.CDA = loadXML(new FileInputStream(xml_file));		
		} catch (Exception e) {
			this.CDA = null;
		}
		if (this.CDA == null) {
			log.log(Level.SEVERE,"Error loading CDA document");	
		}	
		 xPathInit();
	}
	
	public CDA (String xml) {
		try {
			this.CDA = loadXML(new ByteArrayInputStream(xml.getBytes("UTF-8")));
		} catch (Exception e) {
			this.CDA = null;
		}
		if (this.CDA == null) {
			log.log(Level.SEVERE,"Error loading CDA document");	
		}	
		 xPathInit();
	}
	
	private void xPathInit() {
		
		XPathFactory factory = null;
		System.setProperty("javax.xml.xpath.XPathFactory:"+NamespaceConstant.OBJECT_MODEL_SAXON, "net.sf.saxon.xpath.XPathFactoryImpl");
		try {
			factory = XPathFactory.newInstance(NamespaceConstant.OBJECT_MODEL_SAXON);
		} catch (XPathFactoryConfigurationException e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE,"Error generating Saxon xPath Factory");	
		}
		this.xPath = factory.newXPath();
		
		HashMap<String, String> prefMap = new HashMap<String, String>() {{
		    put("cda", "urn:hl7-org:v3");		  
		}};
		SimpleNamespaceContext namespaces = new SimpleNamespaceContext(prefMap);
		xPath.setNamespaceContext(namespaces);
	}
	
	// ordering required for complete interface Comparator
	@Override
	public int compare(Document d1, Document d2) {
		if (d1.equals(d2)) {
			return 0;	
		} else
		{
			return -1; //dummy result
		}
	}
	
	@Override
	public boolean equals(Object other){
	    if (other == null) return false;
	    if (other == this) return true;
	    if (!(other instanceof CDA))return false;
	    CDA myCDA = (CDA)other;
	    	 
		Document doc1 = this.CDA;
		// get the first element
        Element element1 = doc1.getDocumentElement();
        // get all child nodes
        NodeList nodes1 = element1.getChildNodes();
        
		Document doc2 = myCDA.CDA;
		// get the first element
        Element element2 = doc2.getDocumentElement();
        // get all child nodes
        NodeList nodes2 = element2.getChildNodes();

        // print the text content of each child
        /*for (int i = 0; i < 10; i++) {  //nodes1.getLength()
        	log.info("N1:" + nodes1.item(i).getTextContent());
        	log.info("N2" + nodes2.item(i).getTextContent());
        }*/
	    return evalNodes(nodes1.item(1),nodes2.item(1));
	}
	
	public Document loadXML(InputStream xml_file) {
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			return db.parse(xml_file);
		}
		catch (Exception e){
			log.log(Level.SEVERE,"CDA Loading failed",e);	
			return null;
		}

	}
	
	//Execute all relevant XPath-Tests on both nodes => if no compare fails both nodes are equivalent (based on XPath-defined relevance)
	//This should only be applied to valid Schematron-checked CDAs because if there is no match at all both nodes are evaluated as equivalent
	private boolean evalNodes(Node node1, Node node2) {
		boolean ok = true; //testing only
		for (String XCheck : this.XChecks)
		{
			if (! compareXPath(XCheck,node1,node2)) {
				//return false; //default: just return false, for testing: evaluate all and check in the end
				ok = false;
			}
		}
		return ok; //testing only
		//return true; //all checks ok
	}
	
	
	// Check if the XPath Result is the same for target1 and target2 (meaning: no RELEVANT differences in this part of the CDA)
	private boolean compareXPath (String XPath, Node target1, Node target2){
		int count = 0;
		try {
			javax.xml.xpath.XPathExpression expr = this.xPath.compile(XPath);
			NodeList result1 = (NodeList) expr.evaluate(target1, XPathConstants.NODESET);
			NodeList result2 = (NodeList) expr.evaluate(target2, XPathConstants.NODESET);
			
			//log.info("Number of XPath results: " + result1.getLength());
			if (result1.getLength() != result2.getLength()) {
				if (result1.getLength() > 0) {
					//log.info("XPath results number not matching for XPath: " +XPath+ " ("+result1.getLength()+"/"+result2.getLength()+ "); R1=" +result1.item(0).toString());
				}
				else {
					//log.info("XPath results number not matching for XPath: " +XPath+ " ("+result1.getLength()+"/"+result2.getLength() );
				}
				return false;
			}
			for (int i = 0; i < result1.getLength(); i++) {
				//log.info("Testing "+ result1.item(i).toString() + " vs. "+ result2.item(i).toString());
				if (! result1.item(i).toString().equals(result2.item(i).toString())) {
					//log.info("XPath compare - Found deviation: R1="+result1.item(i).toString()+" ; R2="+result2.item(i).toString()+" for XPath: " +XPath);
					return false;	//quit false if anything is not equal
				} else {
					//log.info("XPath compare - No deviation for XPath: "+XPath+ " ; R1/R2=" +result1.item(i).toString()); //For testing only, no need to do anything here
				}
			}
			count = result1.getLength();
		} catch (Exception e) {
			log.log(Level.SEVERE,"XPATH Expression Failed",e);	
			return false;
		}
		//log.info(XPath+" : "+count+"/"+count+" matching Results");
		if (count == 0) {
			//log.info("************************** WARNING ************************************** 0 Results => Possible XPath Error"); //Debugging only!! Incomplete Documents have empty results!
		}
		return true;
	}
	
	
	public class SimpleNamespaceContext implements NamespaceContext {

	    private final Map<String, String> PREF_MAP = new HashMap<String, String>();

	    public SimpleNamespaceContext(final Map<String, String> prefMap) {
	        PREF_MAP.putAll(prefMap);       
	    }

	    public String getNamespaceURI(String prefix) {
	        return PREF_MAP.get(prefix);
	    }

	    public String getPrefix(String uri) {
	        throw new UnsupportedOperationException();
	    }

	    public Iterator getPrefixes(String uri) {
	        throw new UnsupportedOperationException();
	    }

	}
	
}
