package org.aktin.cda.etl;

import net.sf.saxon.Configuration;
import net.sf.saxon.s9api.Processor;
import net.sf.saxon.s9api.Serializer;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;

import org.aktin.cda.etl.transform.fun.CalculateEncounterHash;
import org.aktin.cda.etl.transform.fun.CalculatePatientHash;
import org.aktin.cda.etl.transform.fun.CalculateSourceId;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class XsltIntegrationTest {

  private static final String EAV_XSL_PATH = "/cda-eav/1.2.276.0.76.3.1.195.10.2.xsl";
  private static final String EAV_NAMESPACE_URI = "http://sekmi.de/histream/ns/eav-data";

  private ConcatAnonymizer anonymizer;
  private Processor processor;

  @Before
  public void setUp() {
    anonymizer = new ConcatAnonymizer();
    processor = new Processor(false);
    Configuration config = processor.getUnderlyingConfiguration();

    config.registerExtensionFunction(new CalculateEncounterHash(anonymizer));
    config.registerExtensionFunction(new CalculatePatientHash(anonymizer));
    config.registerExtensionFunction(new CalculateSourceId(anonymizer));
  }

  private String performXsltTransformation(String inputResourcePath, String xsltResourcePath) throws Exception {
    URL inputUrl = getClass().getResource(inputResourcePath);
    URL xslUrl = getClass().getResource(xsltResourcePath);

    assertNotNull("Input XML resource not found: " + inputResourcePath, inputUrl);
    assertNotNull("XSLT resource not found: " + xsltResourcePath, xslUrl);

    File inputFile = new File(inputUrl.toURI());
    File xslFile = new File(xslUrl.toURI());

    net.sf.saxon.s9api.DocumentBuilder saxonBuilder = processor.newDocumentBuilder();
    XdmNode source = saxonBuilder.build(new StreamSource(inputFile));

    XsltCompiler compiler = processor.newXsltCompiler();
    XsltExecutable exec = compiler.compile(new StreamSource(xslFile));
    XsltTransformer transformer = exec.load();

    transformer.setInitialContextNode(source);

    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    Serializer outSerializer = processor.newSerializer(baos);
    outSerializer.setOutputProperty(Serializer.Property.INDENT, "yes");
    transformer.setDestination(outSerializer);
    transformer.transform();

    return baos.toString(StandardCharsets.UTF_8.name());
  }

  private Document parseXmlString(String xmlString) throws Exception {
    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    dbf.setNamespaceAware(true);
    DocumentBuilder domBuilder = dbf.newDocumentBuilder();
    try (InputStream in = new ByteArrayInputStream(xmlString.getBytes(StandardCharsets.UTF_8))) {
      return domBuilder.parse(in);
    }
  }

  private void assertStandardEAVData(Document doc) {
    NodeList birthDates = doc.getElementsByTagNameNS(EAV_NAMESPACE_URI, "birthdate");
    assertTrue("Birthdate element not found in EAV data", birthDates.getLength() > 0);
    assertEquals("1996-05-31", birthDates.item(0).getTextContent());

    NodeList encounters = doc.getElementsByTagNameNS(EAV_NAMESPACE_URI, "encounter");
    assertTrue("Encounter element not found in EAV data", encounters.getLength() > 0);
    Element encounter = (Element) encounters.item(0);

    NodeList starts = encounter.getElementsByTagNameNS(EAV_NAMESPACE_URI, "start");
    assertTrue("Start element in encounter not found in EAV data", starts.getLength() > 0);
    assertEquals("2024-01-17T16:03", starts.item(0).getTextContent());

    NodeList facts = encounter.getElementsByTagNameNS(EAV_NAMESPACE_URI, "fact");
    boolean foundDiagnosis = false;
    for (int i = 0; i < facts.getLength(); i++) {
      Element factElement = (Element) facts.item(i);
      if ("ICD10GM:S93.40".equals(factElement.getAttribute("concept"))) {
        foundDiagnosis = true;
        break;
      }
    }
    assertTrue("ICD10GM:S93.40 diagnosis fact not found in EAV data", foundDiagnosis);
  }

  @Test
  public void testTransformationGeneratesNonEmptyOutput() throws Exception {
    String inputXmlPath = "/basismodul-v2024.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    System.out.println("--- Transformed Output for " + inputXmlPath + " ---");
    System.out.println(transformedXml);
    System.out.println("--- End of Output ---");

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());
  }

  @Test
  public void testEAVOutputFromBasismodul() throws Exception {
    String inputXmlPath = "/basismodul-v2024.xml";
    String eavXmlOutput = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    System.out.println("--- EAV Output for " + inputXmlPath + " ---");
    System.out.println(eavXmlOutput);
    System.out.println("--- End of EAV Output ---");

    Document doc = parseXmlString(eavXmlOutput);
    assertStandardEAVData(doc);
  }

  @Test
  public void testEAVOutputFromMaximalbeispiel() throws Exception {
    String inputXmlPath = "/maximalbeispiel-v2024.xml";
    String eavXmlOutput = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    System.out.println("--- EAV Output for " + inputXmlPath + " ---");
    System.out.println(eavXmlOutput);
    System.out.println("--- End of EAV Output ---");

    Document doc = parseXmlString(eavXmlOutput);
    assertStandardEAVData(doc);
  }
}