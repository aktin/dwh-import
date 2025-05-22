package org.aktin.cda.etl;

import org.aktin.cda.etl.transform.fun.CalculateEncounterHash;
import org.aktin.cda.etl.transform.fun.CalculatePatientHash;
import org.aktin.cda.etl.transform.fun.CalculateSourceId;
import net.sf.saxon.Configuration;
import net.sf.saxon.s9api.*;

import org.junit.Test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import javax.xml.transform.stream.StreamSource;
import java.io.BufferedReader;
import java.io.File;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

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

        DocumentBuilder builder = proc.newDocumentBuilder();
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

}
