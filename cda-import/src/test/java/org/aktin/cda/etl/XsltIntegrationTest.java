package org.aktin.cda.etl;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.xml.transform.stream.StreamSource;
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
import org.junit.BeforeClass;
import org.junit.Test;

public class XsltIntegrationTest {

  private static final String EAV_XSL_PATH = "/cda-eav/1.2.276.0.76.3.1.195.10.92.xsl";
  private static final Path EAV_OUTPUT_DIR = Paths.get("target", "eav-output");

  private ConcatAnonymizer anonymizer;
  private Processor processor;

  @BeforeClass
  public static void setupOutputDirectory() throws Exception {
    Files.createDirectories(EAV_OUTPUT_DIR);
  }

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

  @Test
  public void testTransformationGeneratesNonEmptyOutput() throws Exception {
    String inputXmlPath = "/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025-beispiel-storyboard01.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    inputXmlPath = "/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2025-beispiel-storyboard02.xml";
    transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    inputXmlPath = "/maximalbeispiel-v2025tr.xml";
    transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

  }

  /**
   * Test transformation of multiple subordinate substance administrations.
   * Verifies that:
   * 1. Multiple subordinate administrations create separate facts
   * 2. Medication without subordinate creates a single fact
   * 3. Multiple approachSiteCode elements are numbered
   */
  @Test
  public void testMultipleSubordinateSubstanceAdministrations() throws Exception {
    String inputXmlPath = "/test-multiple-subordinate-substance-administrations.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    // Write output for inspection
    writeEavOutput(transformedXml, "eav-test-multiple-subordinate-substance-administrations.xml");

    // Test Case 1: Paracetamol (N02BE01) with 3 subordinates should create 3 facts
    int paracetamolFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:N02BE01\"");
    assertEquals("Should have 3 facts for Paracetamol (one per subordinate)", 3, paracetamolFacts);

    // Test Case 2: Aspirin (N02BA01) without subordinate should create 1 fact
    int aspirinFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:N02BA01\"");
    assertEquals("Should have 1 fact for Aspirin (no subordinate)", 1, aspirinFacts);

    // Test Case 3: Lidocaine (N01BB02) with multiple approach sites
    int lidocaineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:N01BB02\"");
    assertEquals("Should have 1 fact for Lidocaine (single subordinate)", 1, lidocaineFacts);

    // Verify numbered approachSiteCode modifiers
    assertTrue("Should have approachSiteCode:1", transformedXml.contains("code=\"approachSiteCode:1\""));
    assertTrue("Should have approachSiteCode:2", transformedXml.contains("code=\"approachSiteCode:2\""));
    assertTrue("Should have approachSiteCode:3", transformedXml.contains("code=\"approachSiteCode:3\""));

    // Verify numbered display name modifiers
    assertTrue("Should have AKTIN:MED:SITE:DN:1", transformedXml.contains("code=\"AKTIN:MED:SITE:DN:1\""));
    assertTrue("Should have AKTIN:MED:SITE:DN:2", transformedXml.contains("code=\"AKTIN:MED:SITE:DN:2\""));
    assertTrue("Should have AKTIN:MED:SITE:DN:3", transformedXml.contains("code=\"AKTIN:MED:SITE:DN:3\""));

    // Verify different doses for Paracetamol subordinates
    assertTrue("Should have 500mg dose", transformedXml.contains("unit=\"mg\">500</value>"));
    assertTrue("Should have 1000mg dose", transformedXml.contains("unit=\"mg\">1000</value>"));

    // Verify sequenceNumbers
    assertTrue("Should have sequenceNumber 1", transformedXml.contains("<value xsi:type=\"numeric\">1</value>"));
    assertTrue("Should have sequenceNumber 2", transformedXml.contains("<value xsi:type=\"numeric\">2</value>"));
    assertTrue("Should have sequenceNumber 3", transformedXml.contains("<value xsi:type=\"numeric\">3</value>"));

    // Verify moodCode for standalone medication (INT = intended)
    assertTrue("Aspirin should have moodCode INT",
        transformedXml.contains("concept=\"AKTIN:MED:N02BA01\"") &&
        transformedXml.contains("<value xsi:type=\"string\">INT</value>"));
  }

  /**
   * Writes the EAV content to a file in the output directory.
   */
  private void writeEavOutput(String eavContent, String outputFileName) throws Exception {
    Path outputPath = EAV_OUTPUT_DIR.resolve(outputFileName);
    Files.write(outputPath, eavContent.getBytes(StandardCharsets.UTF_8));
    System.out.println("EAV output written to: " + outputPath.toAbsolutePath());
  }

  /**
   * Counts occurrences of a substring in a string.
   */
  private int countOccurrences(String str, String sub) {
    int count = 0;
    int idx = 0;
    while ((idx = str.indexOf(sub, idx)) != -1) {
      count++;
      idx += sub.length();
    }
    return count;
  }
}