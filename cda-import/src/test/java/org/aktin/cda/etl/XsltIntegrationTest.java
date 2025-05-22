package org.aktin.cda.etl;

import net.sf.saxon.Configuration;
import net.sf.saxon.s9api.*;
import org.aktin.cda.etl.transform.fun.CalculateEncounterHash;
import org.aktin.cda.etl.transform.fun.CalculatePatientHash;
import org.aktin.cda.etl.transform.fun.CalculateSourceId;
import org.junit.Test;

import static org.junit.Assert.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;

public class XsltIntegrationTest {

    @Test
    public void testTransformationRunsAndCreatesOutput() throws Exception {
        // Find resource via classpath
        URL inputUrl = getClass().getResource("/basismodul-v2024.xml");
        URL xslUrl = getClass().getResource("/cda-eav/1.2.276.0.76.3.1.195.10.2.xsl");

        assertNotNull("input XML not found", inputUrl);
        assertNotNull("XSLT not found", xslUrl);

        File inputFile = new File(inputUrl.toURI());
        File xslFile = new File(xslUrl.toURI());
        File outputFile = File.createTempFile("xslt-test-output", ".xml");
        outputFile.deleteOnExit();

        Processor proc = new Processor(false);
        Configuration config = proc.getUnderlyingConfiguration();

        ConcatAnonymizer anonymizer = new ConcatAnonymizer();
        config.registerExtensionFunction(new CalculateEncounterHash(anonymizer));
        config.registerExtensionFunction(new CalculatePatientHash(anonymizer));
        config.registerExtensionFunction(new CalculateSourceId(anonymizer));

        net.sf.saxon.s9api.DocumentBuilder builder = proc.newDocumentBuilder();
        XdmNode source = builder.build(inputFile);

        XsltCompiler compiler = proc.newXsltCompiler();
        XsltExecutable exec = compiler.compile(new StreamSource(xslFile));
        XsltTransformer transformer = exec.load();

        transformer.setInitialContextNode(source);
        transformer.setDestination(proc.newSerializer(outputFile));
        transformer.transform();

        System.out.println("Output file: "+outputFile.getAbsolutePath());
        // Print the content of the temporary file
        System.out.println("=== Output File Content ===");
        try (BufferedReader reader = Files.newBufferedReader(outputFile.toPath())) {
            reader.lines().forEach(System.out::println);
        }
        System.out.println("=== End of Output File Content ===");

        assertTrue(outputFile.exists() && outputFile.length() > 0);
    }

    @Test
    public void testEAVOutputPatientAndDiagnosis() throws Exception {
        // Find resource via classpath
        URL inputUrl = getClass().getResource("/basismodul-v2024.xml");
        URL xslUrl = getClass().getResource("/cda-eav/1.2.276.0.76.3.1.195.10.2.xsl");

        assertNotNull("input XML not found", inputUrl);
        assertNotNull("XSLT not found", xslUrl);

        File inputFile = new File(inputUrl.toURI());
        File xslFile = new File(xslUrl.toURI());
        File outputFile = File.createTempFile("xslt-eav-test-output", ".xml");
        outputFile.deleteOnExit();

        Processor proc = new Processor(false);
        Configuration config = proc.getUnderlyingConfiguration();

        ConcatAnonymizer anonymizer = new ConcatAnonymizer();
        config.registerExtensionFunction(new CalculateEncounterHash(anonymizer));
        config.registerExtensionFunction(new CalculatePatientHash(anonymizer));
        config.registerExtensionFunction(new CalculateSourceId(anonymizer));

        net.sf.saxon.s9api.DocumentBuilder saxonBuilder = proc.newDocumentBuilder();
        XdmNode source = saxonBuilder.build(inputFile);

        XsltCompiler compiler = proc.newXsltCompiler();
        XsltExecutable exec = compiler.compile(new StreamSource(xslFile));
        XsltTransformer transformer = exec.load();

        transformer.setInitialContextNode(source);
        transformer.setDestination(proc.newSerializer(outputFile));
        transformer.transform();

        // === Now parse the EAV XML output ===
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder domBuilder = dbf.newDocumentBuilder();
        try (InputStream in = Files.newInputStream(outputFile.toPath())) {
            Document doc = domBuilder.parse(in);

            // Check <birthdate> value
            NodeList birthDates = doc.getElementsByTagNameNS("http://sekmi.de/histream/ns/eav-data", "birthdate");
            assertTrue(birthDates.getLength() > 0);
            String birthDate = birthDates.item(0).getTextContent();
            assertEquals("1996-05-31", birthDate);

            // Check <start> value under <encounter>
            NodeList encounters = doc.getElementsByTagNameNS("http://sekmi.de/histream/ns/eav-data", "encounter");
            assertTrue(encounters.getLength() > 0);
            Element encounter = (Element) encounters.item(0);
            NodeList starts = encounter.getElementsByTagNameNS("http://sekmi.de/histream/ns/eav-data", "start");
            assertTrue(starts.getLength() > 0);
            String startTime = starts.item(0).getTextContent();
            assertEquals("2024-01-17T16:03", startTime);

            // Find <fact> element with concept="ICD10GM:S93.40"
            NodeList facts = encounter.getElementsByTagNameNS("http://sekmi.de/histream/ns/eav-data", "fact");
            boolean foundDiagnosis = false;
            for (int i = 0; i < facts.getLength(); i++) {
                Element fact = (Element) facts.item(i);
                if ("ICD10GM:S93.40".equals(fact.getAttribute("concept"))) {
                    foundDiagnosis = true;
                    break;
                }
            }
            assertTrue("ICD10GM:S93.40 diagnosis found", foundDiagnosis);
        }
    }

}
