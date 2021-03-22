package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.pojos.ScriptFile;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.io.FileNotFoundException;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class TestSOM {

    @Mock
    Preferences preferences;

    @InjectMocks
    ScriptOperationManager som = new ScriptOperationManager();

    @Test
    public void main() throws FileNotFoundException {
        Mockito.when(preferences.get(PreferenceKey.importScriptPath)).thenReturn("src/test/resources/scripts");
        som.initOperationLock();

        test_getScripts(som);
        test_getScript(som);
        test_getScriptException(som);
    }

    private void test_getScripts(ScriptOperationManager som) {
        assertEquals(1, som.getScripts().size());
    }

    private void test_getScript(ScriptOperationManager som) throws FileNotFoundException {
        ScriptFile script = som.getScripts().get(0);
        assertEquals(script, som.getScript("success"));
        assertEquals("success", script.getId());
        assertEquals("1.0", script.getVersion());
        assertEquals("zip", script.getMimetype());
        assertEquals("p21-success", script.getViewname());
    }

    private void test_getScriptException(ScriptOperationManager som) {
        FileNotFoundException exception = assertThrows(FileNotFoundException.class, () -> {
            som.getScript("invalid");
        });
        assertEquals("invalid could not be found in script cache", exception.getMessage());
    }
}
