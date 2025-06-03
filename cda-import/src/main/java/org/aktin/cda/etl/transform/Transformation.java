package org.aktin.cda.etl.transform;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.xml.transform.Result;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.Configuration;
import net.sf.saxon.TransformerFactoryImpl;
import org.aktin.Preferences;
import org.aktin.cda.etl.transform.fun.CalculateEncounterHash;
import org.aktin.cda.etl.transform.fun.CalculatePatientHash;
import org.aktin.cda.etl.transform.fun.CalculateSourceId;
import org.aktin.dwh.Anonymizer;
import org.w3c.dom.Document;

/**
 * Transform a CDA DOM trees to EAV representation
 *
 * @author R.W.Majeed
 */
public class Transformation {
  private String moduleId;
  private String templateId;

  private TransformerFactoryImpl transformerFactory;
  private Templates transformerTemplates;
  private Anonymizer anonymizer;
  private Preferences aktinProperties;
  private static final Logger LOGGER = Logger.getLogger(Transformation.class.getName());

  /**
   * Constructor for dependency injection
   *
   * @param aktinProperties preferences containing configuration properties
   */
  @Inject
  public Transformation(Preferences aktinProperties) {
    this.aktinProperties = aktinProperties;
  }

  /**
   * Construct a CDA template to EAV transformation
   *
   * @param moduleId module id
   * @param templateId template id
   * @param xslt XSLT document
   * @param anonymizer anonzmiyer
   * @throws TransformerFactoryConfigurationError if the transformer factory failed to initialize
   * @throws TransformerConfigurationException transformer setup error
   */
  public Transformation(String moduleId, String templateId, Document xslt, Anonymizer anonymizer)
      throws TransformerFactoryConfigurationError, TransformerConfigurationException {
    this.moduleId = moduleId;
    this.templateId = templateId;
    this.anonymizer = anonymizer;
    // create transformer
    // ususally a transformer is created via TransformerFactory.newInstance(),
    // but this may return a non-saxon parser
    transformerFactory = new TransformerFactoryImpl();
    // enable custom XPath functions
    injectCustomFunction(moduleId);

    // compile XSLT, no need to store the XSLT DOM anymore
    transformerTemplates = transformerFactory.newTemplates(new DOMSource(xslt));
  }

  public String getTemplateId() {
    return templateId;
  }

  public String getModuleId() {
    return moduleId;
  }

  private void injectCustomFunction(String moduleId) {
    //		if( !(factory instanceof TransformerFactoryImpl) ){
    //			throw new TransformerFactoryConfigurationError("Unable to inject functions into non-Saxon
    // transformer");
    //		}
    //		Configuration config = ((TransformerFactoryImpl)factory).getConfiguration();
    Configuration config = transformerFactory.getConfiguration();
    config.registerExtensionFunction(new CalculatePatientHash(anonymizer));
    config.registerExtensionFunction(new CalculateEncounterHash(anonymizer));
    config.registerExtensionFunction(new CalculateSourceId(anonymizer));
    // TODO don't need moduleId and factory?
  }

  public Transformer newTransformer() throws TransformerConfigurationException {
    return transformerTemplates.newTransformer();
  }

  public void transformToEAV(Document cda, Result result) throws TransformerException {
    // Apply parameters before transformation
    String rootId = null;
    try {
      rootId = aktinProperties.get("rootId");
    } catch (NullPointerException e) {
      LOGGER.log(
          Level.SEVERE,
          "The property rootId in aktin.properties is missing! "
              + "Setting default to 1.2.276.0.76.4.8.");
      rootId = "1.2.276.0.76.4.8";
    }
    Transformer transformer = newTransformer();
    transformer.setParameter("aktin.root.id", rootId);
    transformer.transform(new DOMSource(cda), result);
  }

  /**
   * transform CDA document to EAV XML in temporary file
   *
   * @param document CDA document
   * @return temporary file containing the EAV XML
   * @throws IOException error creating temporary file
   * @throws TransformerException transformation error
   */
  public Path transformToEAV(Document document) throws IOException, TransformerException {
    Path tempEAV = Files.createTempFile("eav", null);

    StreamResult result = new StreamResult(tempEAV.toFile());
    try {
      transformToEAV(document, result);
    } catch (TransformerException e) {
      // remove temporary file
      try {
        Files.delete(tempEAV);
      } catch (IOException e1) {
        e.addSuppressed(e1);
      }
      throw e;
    }
    return tempEAV;
  }
}
