package org.aktin.cda.etl.transform;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLStreamException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;


public class TransformationFactory {
	public static final String VARIABLE_XPATH = "/xsl:stylesheet/xsl:variable[starts-with(@name,'aktin.')]";

//	private XMLInputFactory inputFactory;
	private XPath xpath;
	private DocumentBuilderFactory builderFactory;
	
	public TransformationFactory(){
//		inputFactory = XMLInputFactory.newInstance();
		// XPath configuration
		xpath = XPathFactory.newInstance().newXPath();
		xpath.setNamespaceContext(new TransformationContext());
		// DOM parser
		builderFactory = DocumentBuilderFactory.newInstance();
		builderFactory.setNamespaceAware(true);
		builderFactory.setIgnoringComments(true);
		builderFactory.setValidating(false);
	}
	public Map<String,String> loadVariables(Document input) throws XMLStreamException, XPathExpressionException{
		// load variables
		XPathExpression exp = xpath.compile(VARIABLE_XPATH);
		NodeList nl = (NodeList)exp.evaluate(input.getDocumentElement(), XPathConstants.NODESET);
		Map<String, String> map = new HashMap<>();
		for( int i=0; i<nl.getLength(); i++ ){
			Node n = nl.item(i);
			map.put(n.getAttributes().getNamedItem("name").getNodeValue(), n.getTextContent());
		}
		return map;
	}
	public Document loadDocument(URL url) throws IOException{
		try( InputStream in = url.openStream() ){
			DocumentBuilder builder = builderFactory.newDocumentBuilder();
			return builder.parse(in, url.toExternalForm() );
		} catch (SAXException | ParserConfigurationException e) {
			throw new IOException(e);
		}
	}
	public URL locateTransformationByTemplate(String templateId){
		String resName = "/cda-eav/"+templateId+".xsl";
		return getClass().getResource(resName);
	}
	public Transformation loadTransformation(String templateId) throws IOException{
		URL url = locateTransformationByTemplate(templateId);
		if( url == null ){
			// transformation not found
			return null;
		}
		Document doc = loadDocument(url);
		Map<String, String> vars;
		try {
			vars = loadVariables(doc);
		} catch (XPathExpressionException | XMLStreamException e) {
			throw new IOException("Unable to load configuration from XSL: "+url.toExternalForm(), e);
		}
		String moduleId = vars.get("aktin.module.id");
		String declaredTemplate = vars.get("aktin.module.template");
		// confirm template id
		Objects.requireNonNull(declaredTemplate);
		if( !declaredTemplate.equals(templateId) ){
			// declared template does not match template name
			// there is an error in the template, 
			// this should be reported to the developers

		}
		return new Transformation(this, moduleId, templateId, doc);
	}
}
