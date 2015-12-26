package org.aktin.cda;

import java.io.IOException;
import java.io.InputStream;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPathExpressionException;

import org.junit.Assert;
import org.junit.Test;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class TestXPathExpressions {
	private static final String[] exampleDocuments = new String[]{
			"/CDAexample/basismodul-beispiel-storyboard01.xml",
	};
	
	@Test
	public void extractIds() throws TransformerException, IOException, XPathExpressionException, ParserConfigurationException, SAXException{
		CDAParser parser = new CDAParser();
		for( String example : exampleDocuments ){
			try( InputStream in = getClass().getResourceAsStream(example) ){
				Assert.assertTrue(in.available() > 0);
				Node cda = parser.buildDOM(new StreamSource(in));
				parser.extractIDs(cda);
			}
		}
	}
}
