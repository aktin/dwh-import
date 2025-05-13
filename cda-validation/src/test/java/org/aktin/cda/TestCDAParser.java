package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;

import org.junit.Assert;
import org.junit.Assume;
import org.junit.BeforeClass;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import static org.hamcrest.CoreMatchers.is;


public class TestCDAParser {
	private static final String[] exampleDocuments = new String[]{
			"/CDA Beispiele Basis-Modul v1/basismodul-beispiel-storyboard01.xml",
			"/CDA Beispiele Episodenzusammenfassung Notaufnahmeregister 2024/episodenzusammenfassung-notaufnahmeregister2024-beispiel-storyboard01.xml"
	};

//	private static String schematronVersion;


//	@BeforeClass
//	public static void m() throws IOException, ParserConfigurationException, SAXException {
//		try( InputStream is = TestCDAParser.class.getClassLoader().getResourceAsStream("maven.properties") ) {
//			Properties properties = new Properties();
//			properties.load(is);
//			System.out.println(properties.getProperty("schematronVersion"));
//			schematronVersion = properties.getProperty("schematronVersion");
//		}
//
//
//		// Note: aktin-instance2schematron.xml contains signature="20241202T134738"
//		// janky method
//		try( InputStream is2 = TestCDAParser.class.getClassLoader().getResourceAsStream("aktin-instance2schematron.xml") ) {
//			Properties properties2 = new Properties();
//			properties2.load(is2);
//			System.out.println(properties2.getProperty("signature").replace("\"", ""));
//		}
//		// more robust method
//		try( InputStream is3 = TestCDAParser.class.getClassLoader().getResourceAsStream("aktin-instance2schematron.xml") ) {
//			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
//			DocumentBuilder db = dbf.newDocumentBuilder();
//			Document document = db.parse(is3);
//			NodeList nodeList = document.getElementsByTagName("release");
//			for (int x = 0, size = nodeList.getLength(); x < size; x++) {
//				System.out.println(nodeList.item(x).getAttributes().getNamedItem("signature").getNodeValue());
//			}
//		}
//	}

	/*
	@Test
	public void extractIds() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		for( String example : exampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				Node cda = parser.buildDOM(new StreamSource(in));
				String[] ids = parser.extractIDs(cda);
				Assert.assertEquals(3, ids.length);
				for( String id : ids ){
					Assert.assertNotNull(id);
					Assert.assertNotEquals("", id);
				}
			}
		}
	}
	@Test
	public void verifyId() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		try( InputStream in = getClass().getResourceAsStream(exampleDocuments[0]) ){
			Assert.assertTrue(in.available() > 0);
			Node cda = parser.buildDOM(new StreamSource(in));
			String[] ids = parser.extractIDs(cda);
			Assert.assertEquals(3, ids.length);
			Assert.assertEquals("1234567890", ids[0]);
			Assert.assertEquals("0ff0f2d6-ddc2-4300-a5e6-b0aecd1a7dcf", ids[1]);
		}
	}
*/
	private final InputStream openExampleDocument(String source) throws IOException {
		URL url = getClass().getResource(source);
		Assert.assertNotNull("CDA example document not found in external release: "+url, url);
		System.out.println(url);
		return url.openStream();
	}

	@Test
	public void extractDocumentIDsV2024() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
//		Assume.assumeThat(schematronVersion, is("20241202T134738"));

		CDAParser parser = new CDAParser();
		try( InputStream in = openExampleDocument(exampleDocuments[1]) ){
			Assert.assertTrue(in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String docId = parser.extractDocumentId(cda);
			String templateId = parser.extractTemplateId(cda);
			Assert.assertEquals("1.2.276.0.76.3.1.195.10.2", templateId);
//			System.out.println("TemplateId="+templateId);
			System.out.println("DocumentId="+docId);
		}
	}
	@Test
	public void extractDocumentIDsV1() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
//		Assume.assumeThat(schematronVersion, is("20180322T121703"));

		CDAParser parser = new CDAParser();
		try( InputStream in = openExampleDocument(exampleDocuments[0]) ){
			Assert.assertTrue(in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String docId = parser.extractDocumentId(cda);
			String templateId = parser.extractTemplateId(cda);
			Assert.assertEquals("1.2.276.0.76.10.1015", templateId);
//			System.out.println("TemplateId="+templateId);
			System.out.println("DocumentId="+docId);
		}
	}


	@Test
	public void extractPatientID() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		try( InputStream in = openExampleDocument(exampleDocuments[0]) ){
			Assert.assertTrue(in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String[] pat = parser.extractPatientId(cda);
//			System.out.println("Patient="+Arrays.toString(pat));
			Assert.assertEquals("1.2.276.0.76.4.8", pat[0]);
			Assert.assertEquals("1234567890", pat[1]);
		}
	}
}
