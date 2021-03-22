package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.HashMap;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class TestDSCE {

    @Mock
    Preferences preferences;

    @InjectMocks
    DataSourceCredsExtractor dsce = new DataSourceCredsExtractor();

    @Test
    public void main() {
        Mockito.when(preferences.get(PreferenceKey.i2b2DatasourceCRC)).thenReturn("java:/QueryToolDemoDS");
        System.setProperty("jboss.server.base.dir", "src\\test\\resources");
        test_getDataSourceCredentialsCRC(dsce);
    }

    private void test_getDataSourceCredentialsCRC(DataSourceCredsExtractor dsce) {
        HashMap<String, String> creds = dsce.getDataSourceCredentialsCRC();
        assertEquals("i2b2crcdata", creds.get("user-name"));
        assertEquals("demouser", creds.get("password"));
        assertEquals("jdbc:postgresql://localhost:5432/i2b2?searchPath=i2b2crcdata", creds.get("connection-url"));
    }
}
