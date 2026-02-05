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

    // Test Case 4: Compound Medication - each component should have 1 fact
    int morphineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:N02AA01\"");
    assertEquals("Should have 1 fact for Morphine (compound component)", 1, morphineFacts);

    int atropineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:A03BA01\"");
    assertEquals("Should have 1 fact for Atropine (compound component)", 1, atropineFacts);

    int dextroseFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:V06DC01\"");
    assertEquals("Should have 1 fact for Dextrose (compound component)", 1, dextroseFacts);

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

    // Verify instance_num for multiple administrations of same medication
    assertTrue("Should have instance_num=\"1\"", transformedXml.contains("instance_num=\"1\""));
    assertTrue("Should have instance_num=\"2\"", transformedXml.contains("instance_num=\"2\""));
    assertTrue("Should have instance_num=\"3\"", transformedXml.contains("instance_num=\"3\""));

    // Verify subordinate substance administration IDs are captured
    assertTrue("Should have subordinate ID sub-para-001",
        transformedXml.contains("code=\"id:1\"") &&
        transformedXml.contains("1.2.3.456:sub-para-001"));
    assertTrue("Should have subordinate ID sub-para-002",
        transformedXml.contains("1.2.3.456:sub-para-002"));
    assertTrue("Should have subordinate ID sub-para-003",
        transformedXml.contains("1.2.3.456:sub-para-003"));
    assertTrue("Should have subordinate ID sub-lido-001",
        transformedXml.contains("1.2.3.456:sub-lido-001"));
    assertTrue("Should have subordinate ID sub-morph-001",
        transformedXml.contains("1.2.3.456:sub-morph-001"));

    // Verify code translation from UV Medication Information (simple)
    assertTrue("Should have translation code",
        transformedXml.contains("code=\"translation:1\"") &&
        transformedXml.contains(">4021780<"));
    assertTrue("Should have translation codeSystem",
        transformedXml.contains("code=\"translation:codeSystem:1\"") &&
        transformedXml.contains("2.16.840.1.113883.6.275"));
    assertTrue("Should have translation displayName",
        transformedXml.contains("code=\"translation:displayName:1\"") &&
        transformedXml.contains("Paracetamol 500mg Tabletten"));

    // Verify lotNumberText
    assertTrue("Should have lotNumberText",
        transformedXml.contains("code=\"lotNumberText\"") &&
        transformedXml.contains("BATCH-2024-001"));

    // Verify manufacturerOrganization
    assertTrue("Should have manufacturerOrganization",
        transformedXml.contains("code=\"manufacturerOrganization\"") &&
        transformedXml.contains("Pharma GmbH"));
  }

  /**
   * Test transformation of medication effectiveTime variations.
   * Verifies all temporal data types are correctly transformed:
   * 1. Simple TS timestamp
   * 2. PIVL_TS with full phase (low/high), period, institutionSpecified
   * 3. EIVL_TS event-based timing (after meals)
   * 4. SXPR_TS combined intervals
   * 5. NullFlavor for unknown times
   */
  @Test
  public void testMedicationEffectiveTimeVariations() throws Exception {
    String inputXmlPath = "/test-medication-effectivetime-variations.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    // Write output for inspection
    writeEavOutput(transformedXml, "eav-test-medication-effectivetime-variations.xml");

    // Test Case 1: Simple TS value
    assertTrue("Should have simple effectiveTime value",
        transformedXml.contains("concept=\"AKTIN:MED:N02BE01\"") &&
        transformedXml.contains("code=\"effectiveTime\"") &&
        transformedXml.contains("20240120140000"));

    // Test Case 2: PIVL_TS with phase (low/high), period, institutionSpecified
    assertTrue("Should have effectiveTimePhaseLow",
        transformedXml.contains("code=\"effectiveTimePhaseLow\"") &&
        transformedXml.contains("20240120080000"));
    assertTrue("Should have effectiveTimePhaseHigh",
        transformedXml.contains("code=\"effectiveTimePhaseHigh\"") &&
        transformedXml.contains("20240122080000"));
    assertTrue("Should have effectiveTimePeriod with 8 hours",
        transformedXml.contains("code=\"effectiveTimePeriod\"") &&
        transformedXml.contains("unit=\"h\">8"));
    assertTrue("Should have institutionSpecified=true",
        transformedXml.contains("code=\"effectiveTimeInstitutionSpecified\"") &&
        transformedXml.contains(">true<"));
    assertTrue("Should have operator A",
        transformedXml.contains("code=\"effectiveTimeOperator\"") &&
        transformedXml.contains(">A<"));

    // Test Case 3: EIVL_TS event-based timing
    assertTrue("Should have event code ACM",
        transformedXml.contains("code=\"effectiveTimeEventCode\"") &&
        transformedXml.contains(">ACM<"));
    assertTrue("Should have event displayName",
        transformedXml.contains("code=\"effectiveTimeEventDisplayName\"") &&
        transformedXml.contains("After meal"));
    assertTrue("Should have event offset 30 minutes",
        transformedXml.contains("code=\"effectiveTimeEventOffset\"") &&
        transformedXml.contains("unit=\"min\">30"));

    // Test Case 4: SXPR_TS combined intervals
    assertTrue("Should have set operator I",
        transformedXml.contains("code=\"effectiveTimeSetOperator\"") &&
        transformedXml.contains(">I<"));
    assertTrue("Should have comp:1",
        transformedXml.contains("code=\"effectiveTimeComp:1\"") &&
        transformedXml.contains("20240120080000"));
    assertTrue("Should have comp:2",
        transformedXml.contains("code=\"effectiveTimeComp:2\"") &&
        transformedXml.contains("20240120200000"));

    // Test Case 5: NullFlavor handling (NullFlavor value stored under regular modifier code)
    assertTrue("Should have effectiveTime with NullFlavor value",
        transformedXml.contains("code=\"effectiveTime\"") &&
        transformedXml.contains(">UNK<"));
    assertTrue("Should have doseQuantity with NullFlavor value",
        transformedXml.contains("code=\"doseQuantity\"") &&
        transformedXml.contains(">UNK<"));
    assertTrue("Should have rateQuantity with NullFlavor value",
        transformedXml.contains("code=\"rateQuantity\"") &&
        transformedXml.contains(">NAV<"));
  }

  /**
   * Test transformation of multiple wildcard diagnostics and therapies.
   * Verifies that:
   * 1. Multiple Wildcard Diagnostik entries are all transformed
   * 2. Multiple Wildcard Therapie entries are all transformed
   */
  @Test
  public void testMultipleWildcardDiagnosticsAndTherapies() throws Exception {
    String inputXmlPath = "/test-multiple-wildcards.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    // Write output for inspection
    writeEavOutput(transformedXml, "eav-test-multiple-wildcards.xml");

    // Test: Should have 3 Wildcard Diagnostik facts
    int wdiagFacts = countOccurrences(transformedXml, "concept=\"AKTIN:WDIAG:");
    assertEquals("Should have 3 Wildcard Diagnostik facts", 3, wdiagFacts);

    // Test: Should have 4 Wildcard Therapie facts
    int wtherapyFacts = countOccurrences(transformedXml, "concept=\"AKTIN:WTHERAPY:");
    assertEquals("Should have 4 Wildcard Therapie facts", 4, wtherapyFacts);

    // Verify specific diagnostik codes
    assertTrue("Should have SONO-ABD-001 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:SONO-ABD-001\""));
    assertTrue("Should have EKG-SPECIAL-002 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:EKG-SPECIAL-002\""));
    assertTrue("Should have LAB-TROP-003 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:LAB-TROP-003\""));

    // Verify specific therapie codes
    assertTrue("Should have WV-001 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:WV-001\""));
    assertTrue("Should have SCHIENE-002 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:SCHIENE-002\""));
    assertTrue("Should have INF-003 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:INF-003\""));
    assertTrue("Should have LA-004 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:LA-004\""));
  }

  /**
   * Test transformation of wildcard observations with all supported datatypes.
   * Verifies that:
   * 1. PQ (Physical Quantity) - transforms to numeric with unit
   * 2. INT (Integer) - transforms to numeric
   * 3. REAL (Real number) - transforms to numeric
   * 4. BL (Boolean) - transforms to boolean
   * 5. CD (Coded) - transforms to string with code/codeSystem/displayName modifiers
   * 6. ST (String) - transforms to string
   */
  @Test
  public void testWildcardDiagnostikAllDatatypes() throws Exception {
    String inputXmlPath = "/test-wildcard-datatypes.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    // Write output for inspection
    writeEavOutput(transformedXml, "eav-test-wildcard-datatypes.xml");

    URL inputUrl = getClass().getResource(inputXmlPath);
    assertNotNull("Input XML resource not found: " + inputXmlPath, inputUrl);
    File inputFile = new File(inputUrl.toURI());
    net.sf.saxon.s9api.DocumentBuilder saxonBuilder = processor.newDocumentBuilder();
    XdmNode source = saxonBuilder.build(new StreamSource(inputFile));
    writeEavOutput(source.toString(), "test.xml");
    int w = countOccurrences(source.toString(), "1.2.276.0.76.3.1.195.10.89");
    assertEquals("Source XML should have 8 occurrences of template id for wildcard diagnostic", 8, w);

    // Test: Should have 7 Wildcard Diagnostik facts (one per datatype)
    int wdiagFacts = countOccurrences(transformedXml, "concept=\"AKTIN:WDIAG:");
    assertEquals("Should have 8 Wildcard Diagnostik facts (all datatypes)", 8, wdiagFacts);

    // Verify all diagnostic codes are present
    assertTrue("Should have DIAG-PQ-001", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-PQ-001\""));
    assertTrue("Should have DIAG-INT-002", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-INT-002\""));
    assertTrue("Should have DIAG-REAL-003", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-REAL-003\""));
    assertTrue("Should have DIAG-BL-004", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-BL-004\""));
    assertTrue("Should have DIAG-BL-005", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-BL-005\""));
    assertTrue("Should have DIAG-CD-006", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-CD-006\""));
    assertTrue("Should have DIAG-ST-007", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-ST-007\""));
    assertTrue("Should have DIAG-OTH-008", transformedXml.contains("concept=\"AKTIN:WDIAG:DIAG-OTH-008\""));

    // Test PQ datatype: numeric with unit
    assertTrue("PQ should have numeric type", transformedXml.contains("xsi:type=\"numeric\" unit=\"Cel\">37.5</value>"));

    // Test INT datatype: numeric without unit
    assertTrue("INT should have numeric type with value 7",
        transformedXml.contains("xsi:type=\"numeric\">7</value>"));

    // Test REAL datatype: numeric without unit
    assertTrue("REAL should have numeric type with value 14.5",
        transformedXml.contains("xsi:type=\"numeric\">14.5</value>"));

    // Test BL datatype: boolean true and false
    assertTrue("BL should have boolean type with true",
        transformedXml.contains("xsi:type=\"boolean\">true</value>"));
    assertTrue("BL should have boolean type with false",
        transformedXml.contains("xsi:type=\"boolean\">false</value>"));

    // Test CD datatype: string value with code/codeSystem/displayName modifiers
    assertTrue("CD should have string type with code",
        transformedXml.contains("xsi:type=\"string\">ALERT</value>"));
    assertTrue("CD should have codeSystem modifier with value codeSystem",
        transformedXml.contains("code=\"codeSystem\"") &&
        transformedXml.contains("2.16.840.1.113883.5.1001"));
    assertTrue("CD should have displayName modifier with Alert and oriented",
        transformedXml.contains(">Alert and oriented</value>"));

    // Test ST datatype: string value
    assertTrue("ST should have string type",
            transformedXml.contains("xsi:type=\"string\">Patient presents with acute abdominal pain"));

    // Test OTH datatype: type which is not predefined in schema
    assertTrue("OTH should have string type and concatenate value/@value and value/@text()",
            transformedXml.contains("xsi:type=\"string\">NOTE Patient asks a lot of questions."));
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