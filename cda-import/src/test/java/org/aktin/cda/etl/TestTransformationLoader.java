package org.aktin.cda.etl;

import java.io.IOException;
import java.net.URL;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLStreamException;
import javax.xml.xpath.XPathExpressionException;

import org.aktin.cda.etl.transform.TransformationFactory;
import org.junit.Assert;
import org.junit.Test;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class TestTransformationLoader {

	@Test
	public void verifyTransformVariables() throws XPathExpressionException, XMLStreamException, ParserConfigurationException, IOException, SAXException{
		TransformationFactory f = new TransformationFactory();
		//XMLStreamReader xsr = inputFactory.createXMLStreamReader(getClass().getResourceAsStream("/cda-eav.xsl"));
//		InputSource input = new InputSource(getClass().getResourceAsStream("/cda-eav.xsl"));
		URL url = f.locateTransformationByTemplate("1.2.276.0.76.10.1015");
		Assert.assertNotNull(url);
		Map<String,String> map = f.loadVariables(f.loadDocument(url));
		Assert.assertNotNull(map.get("aktin.module.id"));
		Assert.assertNotNull(map.get("aktin.module.template"));
		System.out.println(map.toString());

	}
}
