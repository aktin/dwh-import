package org.aktin.cda.etl;

import static org.junit.Assert.assertNotNull;

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

/**
 * Shared setup for tests of the CDA to EAV transformation.
 */
public abstract class AbstractXsltTest {

  protected static final String EAV_XSL_PATH = "/cda-eav/1.2.276.0.76.3.1.195.10.93.xsl";
  private static final Path EAV_OUTPUT_DIR = Paths.get("target", "eav-output");

  protected ConcatAnonymizer anonymizer;
  protected Processor processor;

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

  protected String performXsltTransformation(String inputResourcePath, String xsltResourcePath) throws Exception {
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

  /**
   * Writes the EAV content to a file in the output directory.
   */
  protected void writeEavOutput(String eavContent, String outputFileName) throws Exception {
    Path outputPath = EAV_OUTPUT_DIR.resolve(outputFileName);
    Files.write(outputPath, eavContent.getBytes(StandardCharsets.UTF_8));
    System.out.println("EAV output written to: " + outputPath.toAbsolutePath());
  }

  /**
   * Counts occurrences of a substring in a string.
   */
  protected int countOccurrences(String str, String sub) {
    int count = 0;
    int idx = 0;
    while ((idx = str.indexOf(sub, idx)) != -1) {
      count++;
      idx += sub.length();
    }
    return count;
  }

  /**
   * Returns the first fact with the given concept, or an empty string if there is none.
   */
  protected String getFact(String eavContent, String concept) {
    int start = eavContent.indexOf("<fact concept=\"" + concept + "\"");
    if (start == -1) {
      return "";
    }
    int tagEnd = eavContent.indexOf(">", start);
    if (eavContent.charAt(tagEnd - 1) == '/') {
      return eavContent.substring(start, tagEnd + 1);
    }
    return eavContent.substring(start, eavContent.indexOf("</fact>", start));
  }
}
