package org.aktin.importer;

import java.nio.file.Paths;
import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.pojos.DatabaseCreds;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class DataSourceCredsExtractorTest {

    @Mock
    Preferences preferences;

    @InjectMocks
    DataSourceCredsExtractor dsce = new DataSourceCredsExtractor();

    /**
     * Test is disabled because it requires an actual Wildfly application server datasource
     * and a valid standalone.xml configuration file. The DataSourceCredsExtractor class
     * tries to lookup a real JNDI datasource and extract credentials from standalone.xml,
     * which can't be mocked effectively for testing.
     */
    @Disabled
    @Test
    public void main() {
        Mockito.when(preferences.get(PreferenceKey.i2b2DatasourceCRC)).thenReturn("java:/QueryToolDemoDS");
        String testResourcePath = Paths.get("src", "test", "resources").toString();
        System.setProperty("jboss.server.base.dir", testResourcePath);
        test_getDataSourceCredentialsCRC(dsce);
    }

    private void test_getDataSourceCredentialsCRC(DataSourceCredsExtractor dsce) {
        dsce.startup();
        DatabaseCreds creds = dsce.getI2b2crcCredentials();
        assertEquals("i2b2crcdata", creds.getUsername());
        assertEquals("demouser", creds.getPassword());
        assertEquals("jdbc:postgresql://localhost:5432/i2b2?searchPath=i2b2crcdata", creds.getConnectionUrl());
    }
}
