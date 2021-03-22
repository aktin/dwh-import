package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Properties;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class TestFOM {

    @Mock
    Preferences preferences;

    @InjectMocks
    FileOperationManager fom = new FileOperationManager();

    @Test
    public void main() throws IOException {
        Mockito.when(preferences.get(PreferenceKey.importDataPath)).thenReturn("src/test/resources/files");
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
        test_reloadScriptLogs(fom);
        test_deleteUploadFileFolder(fom);
        test_getPropertiesFileException(fom);
        test_removeScriptLogs(fom);
        test_getScriptLogsException(fom);
    }

    private void test_createUploadFileFolder(FileOperationManager fom) throws IOException {
        String path_folder = fom.createUploadFileFolder("1");
        assertTrue(Files.exists(Paths.get(path_folder)));
        assertEquals("src\\test\\resources\\files\\1", path_folder);
    }

    private void test_moveUploadFile(FileOperationManager fom) throws IOException {
        File file = new File("src/test/resources/files/name");
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            writer.append("I am a file");
        }
        String path_old = file.getPath();
        String path_new = "src/test/resources/files/1";
        fom.moveUploadFile(path_old, path_new, "renamed");
        assertFalse(Files.exists(Paths.get(path_old)));
        assertTrue(Files.exists(Paths.get(path_new, "renamed")));
    }

    private void test_createNewPropertiesFile(FileOperationManager fom) {
        fom.createNewPropertiesFile("1", "renamed", 123456789, "success");
        assertTrue(Files.exists(Paths.get("src/test/resources/files/1/properties")));
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
        assertEquals("src\\test\\resources\\files\\2", fom.getUploadFileFolderPath("2"));
    }

    private void createScriptLogs() throws IOException {
        File error = new File("src/test/resources/files/1/stdError");
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(error))) {
            writer.append("I am error");
        }
        File output = new File("src/test/resources/files/1/stdOutput");
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

    private void test_reloadScriptLogs(FileOperationManager fom) {
        fom.reloadScriptLogs("1");
        assertTrue(Files.exists(Paths.get("src/test/resources/files/1/stdError")));
        assertTrue(Files.exists(Paths.get("src/test/resources/files/1/stdOutput")));
        assertEquals(2, fom.getScriptLogs("1").size());
    }

    private void test_deleteUploadFileFolder(FileOperationManager fom) throws IOException {
        String path_folder = fom.deleteUploadFileFolder("1");
        assertFalse(Files.exists(Paths.get(path_folder)));
        assertFalse(Files.exists(Paths.get("src/test/resources/files/1/stdError")));
        assertFalse(Files.exists(Paths.get("src/test/resources/files/1/stdOutput")));
        assertEquals("src\\test\\resources\\files\\1", path_folder);
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
