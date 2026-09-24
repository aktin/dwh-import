package org.aktin.cda.etl;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.StringReader;
import java.net.URL;
import javax.xml.transform.stream.StreamSource;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import org.junit.Test;

public class XsltIntegrationTest extends AbstractXsltTest {

  private static final String MEDICATION_TEST_XML = "/test-medication-eav-extraction.xml";
  private static final String STORYBOARD02_XML = "/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2026-beispiel-storyboard02.xml";

  @Test
  public void testTransformationGeneratesNonEmptyOutput() throws Exception {
    String inputXmlPath = "/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2026-beispiel-storyboard01.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    inputXmlPath = "/episodenzusammenfassung-notaufnahmeregister-transitionsversion-2026-beispiel-storyboard02.xml";
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
    int paracetamolFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:N02BE01\"");
    assertEquals("Should have 3 facts for Paracetamol (one per subordinate)", 3, paracetamolFacts);

    // Test Case 2: Aspirin (N02BA01) without subordinate should create 1 fact
    int aspirinFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:N02BA01\"");
    assertEquals("Should have 1 fact for Aspirin (no subordinate)", 1, aspirinFacts);

    // Test Case 3: Lidocaine (N01BB02) with multiple approach sites
    int lidocaineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:N01BB02\"");

    assertEquals("Should have 1 fact for Lidocaine (single subordinate)", 1, lidocaineFacts);

    // Test Case 4: Compound Medication - each component should have 1 fact
    int morphineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:N02AA01\"");
    assertEquals("Should have 1 fact for Morphine (compound component)", 1, morphineFacts);

    int atropineFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:A03BA01\"");
    assertEquals("Should have 1 fact for Atropine (compound component)", 1, atropineFacts);

    int dextroseFacts = countOccurrences(transformedXml, "concept=\"AKTIN:MED:ATC:V06DC01\"");
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
        transformedXml.contains("concept=\"AKTIN:MED:ATC:N02BA01\"") &&
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
        transformedXml.contains("concept=\"AKTIN:MED:ATC:N02BE01\"") &&
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
    assertTrue("Should have SONO-ABD-001 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:SONO-ABD-001\""));
    assertTrue("Should have EKG-SPECIAL-002 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:EKG-SPECIAL-002\""));
    assertTrue("Should have LAB-TROP-003 diagnostik", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:LAB-TROP-003\""));

    // Verify specific therapie codes
    assertTrue("Should have WV-001 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:UCS:WV-001\""));
    assertTrue("Should have SCHIENE-002 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:UCS:SCHIENE-002\""));
    assertTrue("Should have INF-003 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:UCS:INF-003\""));
    assertTrue("Should have LA-004 therapie", transformedXml.contains("concept=\"AKTIN:WTHERAPY:UCS:LA-004\""));

    // Multiple ids are numbered
    assertTrue("Should have id:2 for WV-001",
        transformedXml.contains("code=\"id:2\"") && transformedXml.contains("1.2.3.789:wproc-001-alt"));
    assertNoDuplicateModifiers(transformedXml);
  }

  /**
   * Test transformation of wildcard observations with all supported datatypes.
   * Verifies that:
   * 1. PQ (Physical Quantity) - transforms to numeric with unit
   * 2. INT (Integer) - transforms to numeric
   * 3. REAL (Real number) - transforms to numeric
   * 4. BL (Boolean) - transforms to string
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
    assertTrue("Should have DIAG-PQ-001", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-PQ-001\""));
    assertTrue("Should have DIAG-INT-002", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-INT-002\""));
    assertTrue("Should have DIAG-REAL-003", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-REAL-003\""));
    assertTrue("Should have DIAG-BL-004", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-BL-004\""));
    assertTrue("Should have DIAG-BL-005", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-BL-005\""));
    assertTrue("Should have DIAG-CD-006", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-CD-006\""));
    assertTrue("Should have DIAG-ST-007", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-ST-007\""));
    assertTrue("Should have DIAG-OTH-008", transformedXml.contains("concept=\"AKTIN:WDIAG:UCS:DIAG-OTH-008\""));

    // Test PQ datatype: numeric with unit
    assertTrue("PQ should have numeric type", transformedXml.contains("xsi:type=\"numeric\" unit=\"Cel\">37.5</value>"));

    // Test INT datatype: numeric without unit
    assertTrue("INT should have numeric type with value 7",
        transformedXml.contains("xsi:type=\"numeric\">7</value>"));

    // Test REAL datatype: numeric without unit
    assertTrue("REAL should have numeric type with value 14.5",
        transformedXml.contains("xsi:type=\"numeric\">14.5</value>"));

    // Test BL datatype: string true and false (histream has no boolean value type)
    assertTrue("BL should have string type with true",
        transformedXml.contains("xsi:type=\"string\">true</value>"));
    assertTrue("BL should have string type with false",
        transformedXml.contains("xsi:type=\"string\">false</value>"));

    // Test CD datatype: string value with code/codeSystem/displayName modifiers
    assertTrue("CD should have string type with code",
        transformedXml.contains("xsi:type=\"string\">ALERT</value>"));
    assertTrue("CD should have valueCodeSystem modifier with the code system of the value",
        transformedXml.contains("code=\"valueCodeSystem\"") &&
        transformedXml.contains("2.16.840.1.113883.5.1001"));
    assertTrue("CD should have valueDisplayName modifier with Alert and oriented",
        transformedXml.contains("code=\"valueDisplayName\"") &&
        transformedXml.contains(">Alert and oriented</value>"));
    assertTrue("Multiple ids should be numbered",
        transformedXml.contains("code=\"id:2\"") && transformedXml.contains("1.2.3.789:wdiag-cd-alt"));
    assertNoDuplicateModifiers(transformedXml);

    // Test ST datatype: string value
    assertTrue("ST should have string type",
            transformedXml.contains("xsi:type=\"string\">Patient presents with acute abdominal pain"));

    // Test OTH datatype: type which is not predefined in schema
    assertTrue("OTH should have string type and concatenate value/@value and value/@text()",
            transformedXml.contains("xsi:type=\"string\">NOTE Patient asks a lot of questions."));
  }

  /**
   * Test that vital parameters (like GCS) correctly inherit effectiveTime from the
   * Vitalparameter-Container when they lack their own timestamp.
   */
  @Test
  public void testVitalParameterEffectiveTimeFallback() throws Exception {
    String inputXmlPath = "/test-vital-effectivetime-fallback.xml";
    String transformedXml = performXsltTransformation(inputXmlPath, EAV_XSL_PATH);

    assertNotNull("Transformed XML should not be null", transformedXml);
    assertFalse("Transformed XML should be non-empty", transformedXml.trim().isEmpty());

    // Verify GCS total has the inherited timestamp 2024-01-17T16:21:00
    assertTrue("GCS Total should inherit start time 2024-01-17T16:21 from container",
        transformedXml.contains("concept=\"LOINC:9269-2\" start=\"2024-01-17T16:21\""));
        
    // Verify GCS eye opening has the inherited timestamp 2024-01-17T16:21:00
    assertTrue("GCS Eye should inherit start time 2024-01-17T16:21 from container",
        transformedXml.contains("start=\"2024-01-17T16:21\" concept=\"LOINC:9267-6\""));
  }

  /**
   * Asserts that no fact contains two modifiers with the same code. histream writes every modifier with the
   * fact's concept_cd, start_date and instance_num, so duplicates collide with the primary key of observation_fact.
   */
  private void assertNoDuplicateModifiers(String eavXml) throws Exception {
    XdmNode eav = processor.newDocumentBuilder().build(new StreamSource(new StringReader(eavXml)));
    XPathCompiler compiler = processor.newXPathCompiler();
    compiler.declareNamespace("eav", "http://sekmi.de/histream/ns/eav-data");
    String duplicates = compiler.evaluate("string-join(//eav:fact[some $m in eav:modifier satisfies "
        + "count(eav:modifier[@code = $m/@code]) > 1]/@concept, ', ')", eav).toString();
    assertEquals("Facts with duplicate modifier codes", "", duplicates);
  }

  /**
   * Narrative references to elements with mixed content (text and child elements) must be resolved to
   * a single string instead of aborting the transformation of the whole document.
   */
  @Test
  public void testMedicationNarrativeWithMixedContent() throws Exception {
    XdmNode eav = transformMedicationTestDocument();

    assertEquals("Paracetamol 1 g i.v.",
        xpath(eav, "string(//eav:fact[eav:modifier[@code='parentMedicationStatementId']/eav:value='1.2.3.456:med-mixed-a']"
            + "/eav:modifier[@code='text']/eav:value)").toString());
    assertEquals("Ibuprofen 400 mg p.o.",
        xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:M01AE01']/eav:modifier[@code='AKTIN:MED:DESC']/eav:value)").toString());
  }

  /**
   * The medication concept must identify the code system (AKTIN:MED:{system}:{code}), the code system OID is kept
   * as modifier, and every fact with an ATC code (as code or translation) carries the modifier atcCode.
   */
  @Test
  public void testMedicationCodeSystem() throws Exception {
    XdmNode eav = transformMedicationTestDocument();
    String atc = "2.16.840.1.113883.6.73";

    // ATC, statement with subordinate
    assertEquals(atc, xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:N02BE01']/eav:modifier[@code='codeSystem']/eav:value)").toString());
    assertEquals("N02BE01", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:N02BE01']/eav:modifier[@code='atcCode']/eav:value)").toString());
    // ATC, statement without subordinate
    assertEquals(atc, xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:M01AE01']/eav:modifier[@code='codeSystem']/eav:value)").toString());
    // PZN with ATC translation
    assertEquals("1.2.276.0.76.4.6", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:PZN:01016788']/eav:modifier[@code='codeSystem']/eav:value)").toString());
    assertEquals("N02BB02", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:PZN:01016788']/eav:modifier[@code='atcCode']/eav:value)").toString());
    // SNOMED CT without ATC
    assertEquals("1", xpath(eav, "count(//eav:fact[@concept='AKTIN:MED:SNOMED:387458008'])").toString());
    assertEquals("0", xpath(eav, "count(//eav:fact[@concept='AKTIN:MED:SNOMED:387458008']/eav:modifier[@code='atcCode'])").toString());
    // unknown code system
    assertEquals("1.2.3.4.5.6", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:UCS:X-4711']/eav:modifier[@code='codeSystem']/eav:value)").toString());
  }

  /**
   * Dose and rate ranges (IVL_PQ with low/high) must be mapped to {name}Low/{name}High modifiers.
   */
  @Test
  public void testMedicationDoseAndRateRanges() throws Exception {
    XdmNode eav = transformMedicationTestDocument();
    String fact = "//eav:fact[@concept='AKTIN:MED:ATC:N02AB03']";

    assertEquals("50 ug", xpath(eav, "string-join(" + fact + "/eav:modifier[@code='doseQuantityLow']/eav:value/(., @unit), ' ')").toString());
    assertEquals("100 ug", xpath(eav, "string-join(" + fact + "/eav:modifier[@code='doseQuantityHigh']/eav:value/(., @unit), ' ')").toString());
    assertEquals("1 ml/h", xpath(eav, "string-join(" + fact + "/eav:modifier[@code='rateQuantityLow']/eav:value/(., @unit), ' ')").toString());
    assertEquals("UNK", xpath(eav, "string(" + fact + "/eav:modifier[@code='rateQuantityHigh']/eav:value)").toString());
    assertEquals("0", xpath(eav, "count(" + fact + "/eav:modifier[@code=('doseQuantity','rateQuantity')])").toString());
  }

  /**
   * The administrationUnitCode of the subordinate substance administration must be mapped.
   */
  @Test
  public void testMedicationAdministrationUnitCode() throws Exception {
    XdmNode eav = transformMedicationTestDocument();
    String fact = "//eav:fact[@concept='AKTIN:MED:ATC:N02AB03']";

    assertEquals("INJSOL", xpath(eav, "string(" + fact + "/eav:modifier[@code='administrationUnitCode']/eav:value)").toString());
    assertEquals("Injection Solution", xpath(eav, "string(" + fact + "/eav:modifier[@code='administrationUnitCode:displayName']/eav:value)").toString());
  }

  /**
   * The statusCode of the medication statement may differ from the one of the subordinate substance
   * administration (storyboard 02: statement 'completed', subordinate 'active') and must be preserved.
   */
  @Test
  public void testMedicationStatementStatusCode() throws Exception {
    XdmNode storyboard = transform(STORYBOARD02_XML);
    String imipenem = "//eav:fact[@concept='AKTIN:MED:ATC:J01DH51']";
    assertEquals("active", xpath(storyboard, "string(" + imipenem + "/eav:modifier[@code='statusCode']/eav:value)").toString());
    assertEquals("completed", xpath(storyboard, "string(" + imipenem + "/eav:modifier[@code='statementStatusCode']/eav:value)").toString());

    // statement without subordinate
    XdmNode eav = transformMedicationTestDocument();
    assertEquals("completed", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:M01AE01']/eav:modifier[@code='statementStatusCode']/eav:value)").toString());
  }

  /**
   * Product information (translation, lotNumberText, manufacturerOrganization) must be mapped for
   * medication statements without subordinate substance administration as well.
   */
  @Test
  public void testMedicationProductInformationWithoutSubordinate() throws Exception {
    XdmNode eav = transformMedicationTestDocument();
    String fact = "//eav:fact[@concept='AKTIN:MED:ATC:M01AE01']";

    assertEquals("1234567", xpath(eav, "string(" + fact + "/eav:modifier[@code='translation:1']/eav:value)").toString());
    assertEquals("1.2.276.0.76.4.6", xpath(eav, "string(" + fact + "/eav:modifier[@code='translation:codeSystem:1']/eav:value)").toString());
    assertEquals("Ibuprofen 400 mg Filmtabletten", xpath(eav, "string(" + fact + "/eav:modifier[@code='translation:displayName:1']/eav:value)").toString());
    assertEquals("LOT-IBU-42", xpath(eav, "string(" + fact + "/eav:modifier[@code='lotNumberText']/eav:value)").toString());
    assertEquals("Beispiel Pharma AG", xpath(eav, "string(" + fact + "/eav:modifier[@code='manufacturerOrganization']/eav:value)").toString());
  }

  /**
   * fact/@start must also be derived from PIVL_TS phase/low and from SXPR_TS components.
   */
  @Test
  public void testMedicationStartFromPeriodicAndSetExpression() throws Exception {
    // storyboard 02: electrolyte infusion as PIVL_TS with phase/low 202401162001
    XdmNode storyboard = transform(STORYBOARD02_XML);
    assertEquals("2024-01-16T20:01", xpath(storyboard, "string(//eav:fact[@concept='AKTIN:MED:ATC:B05BB01']/@start)").toString());

    // SXPR_TS with PIVL_TS as first component
    XdmNode eav = transformMedicationTestDocument();
    assertEquals("2024-01-17T20:00:00", xpath(eav, "string(//eav:fact[@concept='AKTIN:MED:ATC:B01AB05']/@start)").toString());
  }

  /**
   * SXPR_TS components of type PIVL_TS or EIVL_TS must be mapped completely, including their
   * datatype and operator.
   */
  @Test
  public void testMedicationSetExpressionComponents() throws Exception {
    XdmNode eav = transformMedicationTestDocument();
    String fact = "//eav:fact[@concept='AKTIN:MED:ATC:B01AB05']";

    assertEquals("0", xpath(eav, "count(" + fact + "/eav:modifier[eav:value = ''])").toString());
    // component 1: PIVL_TS
    assertEquals("PIVL_TS", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompType:1']/eav:value)").toString());
    assertEquals("20240117200000", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompPhaseLow:1']/eav:value)").toString());
    assertEquals("24 h", xpath(eav, "string-join(" + fact + "/eav:modifier[@code='effectiveTimeCompPeriod:1']/eav:value/(., @unit), ' ')").toString());
    assertEquals("true", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompInstitutionSpecified:1']/eav:value)").toString());
    // component 2: EIVL_TS with operator
    assertEquals("EIVL_TS", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompType:2']/eav:value)").toString());
    assertEquals("I", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompOperator:2']/eav:value)").toString());
    assertEquals("HS", xpath(eav, "string(" + fact + "/eav:modifier[@code='effectiveTimeCompEventCode:2']/eav:value)").toString());
    assertEquals("30 min", xpath(eav, "string-join(" + fact + "/eav:modifier[@code='effectiveTimeCompEventOffset:2']/eav:value/(., @unit), ' ')").toString());

    // top level EIVL_TS operator and PIVL_TS alignment
    String eivl = "//eav:fact[@concept='AKTIN:MED:ATC:A02BC01'][eav:modifier[@code='effectiveTimeEventCode']]";
    assertEquals("A", xpath(eav, "string(" + eivl + "/eav:modifier[@code='effectiveTimeOperator']/eav:value)").toString());
    String pivl = "//eav:fact[@concept='AKTIN:MED:ATC:A02BC01'][eav:modifier[@code='effectiveTimePeriod']]";
    assertEquals("DW", xpath(eav, "string(" + pivl + "/eav:modifier[@code='effectiveTimeAlignment']/eav:value)").toString());
  }

  private XdmNode transformMedicationTestDocument() throws Exception {
    String transformedXml = performXsltTransformation(MEDICATION_TEST_XML, EAV_XSL_PATH);
    writeEavOutput(transformedXml, "eav-test-medication-eav-extraction.xml");
    return processor.newDocumentBuilder().build(new StreamSource(new StringReader(transformedXml)));
  }

  private XdmNode transform(String inputResourcePath) throws Exception {
    String transformedXml = performXsltTransformation(inputResourcePath, EAV_XSL_PATH);
    return processor.newDocumentBuilder().build(new StreamSource(new StringReader(transformedXml)));
  }

  /**
   * Evaluates an XPath expression on the EAV output. The prefix {@code eav} is bound to the EAV namespace.
   */
  private XdmValue xpath(XdmNode eav, String expression) throws Exception {
    XPathCompiler compiler = processor.newXPathCompiler();
    compiler.declareNamespace("eav", "http://sekmi.de/histream/ns/eav-data");
    return compiler.evaluate(expression, eav);
  }

}
