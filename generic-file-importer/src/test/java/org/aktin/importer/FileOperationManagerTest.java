package org.aktin.importer;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Properties;
import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
public class FileOperationManagerTest {

    private static final String TEST_DIR = Paths.get("src", "test", "resources", "files").toString();

    @Mock
    Preferences preferences;

    @InjectMocks
    FileOperationManager fom = new FileOperationManager();

    @Test
    public void main() throws IOException {
        Mockito.when(preferences.get(PreferenceKey.importDataPath)).thenReturn(TEST_DIR);
        fom.initOperationLock();

        test_createUploadFileFolder(fom);
        test_moveUploadFile(fom);
        test_createNewPropertiesFile(fom);
        test_addPropertyToPropertiesFile(fom);
        test_getPropertiesFiles(fom);
        test_getPropertiesFile(fom);
        test_getUploadFileFolderPath(fom);
        createScriptLogs();
        test_getScriptLogsException(fom);
        test_loadScriptLogs(fom);
        test_deleteUploadFileFolder(fom);
        test_getPropertiesFileException(fom);
        test_removeScriptLogs(fom);
        test_getScriptLogsException(fom);
    }

    private void test_createUploadFileFolder(FileOperationManager fom) throws IOException {
        String path_folder = fom.createUploadFileFolder("1");
        assertTrue(Files.exists(Paths.get(path_folder)));
        assertEquals(Paths.get(TEST_DIR, "1").toString(), path_folder);
    }

    private void test_moveUploadFile(FileOperationManager fom) throws IOException {
        File file = new File(Paths.get(TEST_DIR, "name").toString());
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            writer.append("I am a file");
        }
        String path_old = file.getPath();
        String path_new = Paths.get(TEST_DIR, "1").toString();
        fom.moveUploadFile(path_old, path_new, "renamed");
        assertFalse(Files.exists(Paths.get(path_old)));
        assertTrue(Files.exists(Paths.get(path_new, "renamed")));
    }

    private void test_createNewPropertiesFile(FileOperationManager fom) {
        fom.createNewPropertiesFile("1", "renamed", 123456789, "success");
        assertTrue(Files.exists(Paths.get(TEST_DIR, "1", "properties")));
        Properties properties = fom.getPropertiesFile("1");
        assertEquals("1", properties.getProperty(PropertiesKey.id.name()));
        assertEquals("renamed", properties.getProperty(PropertiesKey.filename.name()));
        assertEquals("123456789", properties.getProperty(PropertiesKey.size.name()));
        assertEquals("success", properties.getProperty(PropertiesKey.script.name()));
        assertEquals(PropertiesOperation.uploading.name(), properties.getProperty(PropertiesKey.operation.name()));
        assertEquals(PropertiesState.successful.name(), properties.getProperty(PropertiesKey.state.name()));
    }

    private void test_addPropertyToPropertiesFile(FileOperationManager fom) {
        fom.addPropertyToPropertiesFile("1", "IMPORT", "TRUE");
        fom.addPropertyToPropertiesFile("1", PropertiesKey.state.name(), PropertiesState.in_progress.name());
        Properties properties = fom.getPropertiesFile("1");
        assertEquals("TRUE", properties.getProperty("IMPORT"));
        assertEquals(PropertiesState.in_progress.name(), properties.getProperty(PropertiesKey.state.name()));
    }

    private void test_getPropertiesFiles(FileOperationManager fom) {
        assertEquals(2, fom.getPropertiesFiles().size());
    }

    private void test_getPropertiesFile(FileOperationManager fom) {
        Properties properties = fom.getPropertiesFile("2");
        assertEquals("2", properties.getProperty(PropertiesKey.id.name()));
        assertEquals("file", properties.getProperty(PropertiesKey.filename.name()));
        assertEquals("1024", properties.getProperty(PropertiesKey.size.name()));
        assertEquals("success", properties.getProperty(PropertiesKey.script.name()));
        assertEquals(PropertiesOperation.uploading.name(), properties.getProperty(PropertiesKey.operation.name()));
        assertEquals(PropertiesState.successful.name(), properties.getProperty(PropertiesKey.state.name()));
    }

    private void test_getUploadFileFolderPath(FileOperationManager fom) {
       assertEquals(Paths.get(TEST_DIR, "2").toString(), fom.getUploadFileFolderPath("2"));
    }

    private void createScriptLogs() throws IOException {
        File error = new File(Paths.get(TEST_DIR, "1", "stdError").toString());
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(error))) {
            writer.append("I am error");
        }
        File output = new File(Paths.get(TEST_DIR, "1", "stdOutput").toString());
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(output))) {
            writer.append("I am output");
        }
    }

    private void test_getScriptLogsException(FileOperationManager fom) {
        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () -> {
            fom.getScriptLogs("1");
        });
        assertEquals("Script logs for 1 could not be found in cache", exception.getMessage());
    }

    private void test_loadScriptLogs(FileOperationManager fom) {
        fom.loadScriptLogs("1");
        assertTrue(Files.exists(Paths.get(TEST_DIR, "1", "stdError")));
        assertTrue(Files.exists(Paths.get(TEST_DIR, "1", "stdOutput")));
        assertEquals(2, fom.getScriptLogs("1").size());
    }

    private void test_deleteUploadFileFolder(FileOperationManager fom) throws IOException {
        String path_folder = fom.deleteUploadFileFolder("1");
        assertFalse(Files.exists(Paths.get(path_folder)));
        assertFalse(Files.exists(Paths.get(TEST_DIR, "1", "stdError")));
        assertFalse(Files.exists(Paths.get(TEST_DIR, "1", "stdOutput")));
        assertEquals(Paths.get(TEST_DIR, "1").toString(), path_folder);
    }

    private void test_getPropertiesFileException(FileOperationManager fom) {
        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () -> {
            fom.getPropertiesFile("1");
        });
        assertEquals("1 could not be found in properties cache", exception.getMessage());
    }

    private void test_removeScriptLogs(FileOperationManager fom) {
        fom.removeScriptLogs("1");
    }
}
