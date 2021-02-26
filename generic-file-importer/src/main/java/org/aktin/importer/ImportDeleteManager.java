package org.aktin.importer;

import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.ejb.Singleton;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

@Singleton
public class ImportDeleteManager {

    private static final Logger LOGGER = Logger.getLogger(ImportDeleteManager.class.getName());

    @Inject
    DataSourceCredsExtractor dataSourceCredsExtractor;

    @Inject
    FileOperationManager fileOperationManager;

    private HashMap<String, String> i2b2crcCredentials = new HashMap<>();

    /**
     * On startup, extract credentials and connection-url for i2b2crcdata and save them in hashmap
     * Credentials are used to connect to postgres database schema
     */
    @PostConstruct
    private void startup() {
        i2b2crcCredentials = dataSourceCredsExtractor.getDataSourceCredentialsCRC();
    }

    /**
     * Checks for given file if data is already imported in i2b2crcdata and deletes all imported entries if true
     * @param uuid id of file to check and delete imported data from
     */
    public void deleteImportedDataFromDB(String uuid) {
        try {
            Properties properties = fileOperationManager.getPropertiesFile(uuid);
            if (isFileImported(properties)) {
                String id_script = properties.getProperty(PropertiesKey.script.name());
                String sourcesystem = String.join("_", "i", id_script, uuid);
                deleteImportedDataBySource(sourcesystem);
            }
        } catch (IllegalArgumentException e) {
            LOGGER.log(Level.SEVERE, "{0} could not be found in operationLock", uuid);
        }
    }

    /**
     * Checks for given file if it is already imported in i2b2
     * @param properties java properties file from file to check
     * @return boolean if import operation is finished for corresponding file
     */
    private boolean isFileImported(Properties properties) {
        boolean result = false;
        PropertiesOperation operation = PropertiesOperation.valueOf(properties.getProperty(PropertiesKey.operation.name()));
        if (operation.equals(PropertiesOperation.importing)) {
            PropertiesState state = PropertiesState.valueOf(properties.getProperty(PropertiesKey.state.name()));
            if (state.equals(PropertiesState.successful)) {
                result = true;
            }
        }
        return result;
    }

    /**
     * Deletes all entries from i2b2crcdata.observation_fact for given sourcesystem
     * Sourcesystem_cd for imported files is always "i_{id_script}_{uuid}"
     * @param sourcesystem source code for file to delete entries from
     */
    private void deleteImportedDataBySource(String sourcesystem) {
        Connection conn;
        PreparedStatement ps = null;
        Properties connProps = new Properties();
        connProps.put("user", i2b2crcCredentials.get("user-name"));
        connProps.put("password", i2b2crcCredentials.get("password"));
        try {
            conn = DriverManager.getConnection(i2b2crcCredentials.get("connection-url"), connProps);
            try {
                conn.setAutoCommit(false);
                ps = conn.prepareStatement("DELETE FROM observation_fact WHERE sourcesystem_cd = ?");
                ps.setString(1, sourcesystem);
                ps.executeUpdate();
                conn.commit();
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error during SQL query", e);
                conn.rollback();
            } finally {
                if (ps != null)
                    ps.close();
                conn.close();
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error during SQL connection", e);
        }
    }
}