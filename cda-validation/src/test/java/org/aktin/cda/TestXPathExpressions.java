package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.junit.Assert;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class TestXPathExpressions {
	private static final String[] exampleDocuments = new String[]{
			"/CDAexample/basismodul-beispiel-storyboard01.xml",
	};
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
	//@Test
	public void printTest() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		int idx = 0;
		try( InputStream in = getClass().getResourceAsStream(exampleDocuments[0]) ){
			Assert.assertTrue(in.available() > 0);
			Node cda = parser.buildDOM(new StreamSource(in));
			XPathFactory f = XPathFactory.newInstance();
			XPath x = f.newXPath();
			x.setNamespaceContext(CDAParser.namespaceContext);
//			String s = x.evaluate(CDAParser.ID_TREE_XPATHS[idx], cda);
//			System.out.println("Result1="+s);
//			s = x.compile(CDAParser.ID_TREE_XPATHS[idx]).evaluate(cda);
//			System.out.println("Result2="+s);	
			//s = parser.extractIDs(cda)[idx];
			//System.out.println("Result3="+s);				
		}
	}
	@Test
	public void extractDocumentIDs() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		try( InputStream in = getClass().getResourceAsStream(exampleDocuments[0]) ){
			Assert.assertTrue(in.available() > 0);
			Document cda = parser.buildDOM(new StreamSource(in));
			String docId = parser.extractDocumentId(cda);
			String templateId = parser.extractTemplateId(cda);
			System.out.println("TemplateId="+templateId);
			System.out.println("DocumentId="+docId);
		}
	}
}
