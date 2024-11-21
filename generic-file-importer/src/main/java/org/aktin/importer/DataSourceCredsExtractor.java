package org.aktin.importer;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import javax.annotation.PostConstruct;
import javax.ejb.Singleton;
import javax.inject.Inject;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.pojos.DatabaseCreds;

/**
 * Extracts database credentials from both JNDI DataSource and Wildfly configuration.
 * Username and URL are obtained from DataSource metadata, while password is extracted
 * from standalone.xml configuration file.
 */
@Singleton
public class DataSourceCredsExtractor {

  @Inject
  private Preferences preferences;

  private DatabaseCreds i2b2crcCredentials;

  @PostConstruct
  public void startup() {
    String datasourceName = preferences.get(PreferenceKey.i2b2DatasourceCRC);
    i2b2crcCredentials = extractCredentials(datasourceName);
  }

  private DatabaseCreds extractCredentials(String datasourceName) {
    try {
      DataSource dataSource = lookupDataSource(datasourceName);
      return createDatabaseCreds(dataSource);
    } catch (Exception e) {
      throw new IllegalStateException("Failed to extract database credentials", e);
    }
  }

  private DataSource lookupDataSource(String datasourceName) throws NamingException {
    InitialContext context = new InitialContext();
    return (DataSource) context.lookup(datasourceName);
  }

  private DatabaseCreds createDatabaseCreds(DataSource dataSource) throws SQLException {
    try (Connection connection = dataSource.getConnection()) {
      return new DatabaseCreds(
          connection.getMetaData().getUserName(),
          extractPasswordFromConfig(),
          connection.getMetaData().getURL()
      );
    }
  }

  /**
   * Extracts database password from Wildfly standalone.xml configuration file.
   *
   * @return The password string or empty string if extraction fails
   */
  private String extractPasswordFromConfig() {
    Path configFile = Paths.get(System.getProperty("jboss.server.config.dir"), "standalone.xml");
    if (!Files.exists(configFile)) {
      throw new IllegalStateException("Configuration file not found: " + configFile);
    }
    try {
      String xmlContent = Files.lines(configFile).collect(Collectors.joining("\n"));
      String datasourceName = preferences.get(PreferenceKey.i2b2DatasourceCRC);
      String datasourceSection = extractDatasourceSection(xmlContent, datasourceName);
      if (datasourceSection.isEmpty()) {
        throw new IllegalStateException("Datasource section not found for: " + datasourceName);
      }
      String password = extractValue(datasourceSection, "password");
      if (password.isEmpty()) {
        throw new IllegalStateException("Password not found in datasource configuration");
      }
      return password;
    } catch (IOException e) {
      throw new IllegalStateException("Failed to read configuration file", e);
    }
  }

  private String extractDatasourceSection(String xml, String datasourceName) {
    int start = xml.indexOf("jndi-name=\"" + datasourceName + "\"");
    if (start == -1) {
      return "";
    }

    start = xml.lastIndexOf("<datasource", start);
    int end = xml.indexOf("</datasource>", start) + "</datasource>".length();
    return start == -1 || end == -1 ? "" : xml.substring(start, end);
  }

  private String extractValue(String xml, String tag) {
    int start = xml.indexOf("<" + tag + ">") + tag.length() + 2;
    int end = xml.indexOf("</" + tag + ">");
    return start == -1 || end == -1 ? "" : xml.substring(start, end);
  }

  public DatabaseCreds getI2b2crcCredentials() {
    return i2b2crcCredentials;
  }
}
