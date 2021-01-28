package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.ImportOperation;
import org.aktin.importer.enums.ImportState;
import org.aktin.importer.enums.LogType;
import org.aktin.importer.enums.PropertyKey;
import org.aktin.importer.pojos.PropertiesFilePOJO;
import org.aktin.importer.pojos.ScriptLogPOJO;

import javax.annotation.PostConstruct;
import javax.ejb.Singleton;
import javax.inject.Inject;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import java.util.stream.Stream;

// TODO COMMENTS + JAVA DOC
// TODO synchronized

@Singleton
public class FileOperationManager {

    private static final Logger LOGGER = Logger.getLogger(FileOperationManager.class.getName());
    private final PropertyKey[] DEFAULT_PROPERTIES = {PropertyKey.id, PropertyKey.filename, PropertyKey.size, PropertyKey.script, PropertyKey.operation, PropertyKey.state};

    @Inject
    private Preferences preferences;

    private final HashMap<String, PropertiesFilePOJO> operationLock_properties = new HashMap<>();
    private final HashMap<String, ArrayList<ScriptLogPOJO>> operationLock_scriptLog = new HashMap<>();

    // only integrated properties in operationLock
    @PostConstruct
    private void initOperationLock() {
        synchronized (operationLock_properties) {
            synchronized (operationLock_scriptLog) {
                Properties properties;
                PropertiesFilePOJO pojo_properties;
                ArrayList<ScriptLogPOJO> list_scriptLog;
                for (String uuid : getUploadedFileIDs()) {
                    properties = loadPropertiesFile(uuid);
                    if (checkPropertiesFileForIntegrity(properties)) {
                        pojo_properties = createPropertiesPOJO(properties);
                        operationLock_properties.put(uuid, pojo_properties);
                        list_scriptLog = createScriptLogList(uuid);
                        operationLock_scriptLog.put(uuid, list_scriptLog);
                    } else
                        LOGGER.log(Level.WARNING, "{0} misses some keys", uuid);
                }
            }
        }
    }

    // files.walk -> IOExveption
    private ArrayList<String> getUploadedFileIDs() {
        String path = preferences.get(PreferenceKey.importDataPath);
        ArrayList<String> list_uuid = new ArrayList<>();
        try (Stream<java.nio.file.Path> walk = Files.walk(Paths.get(path))) {
            walk.filter(Files::isDirectory)
                    .filter(path_dir -> !path_dir.equals(Paths.get(path)))
                    .map(java.nio.file.Path::getFileName)
                    .map(java.nio.file.Path::toString)
                    .forEach(list_uuid::add);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No file to walk found", e);
        }
        return list_uuid;
    }

    private Properties loadPropertiesFile(String uuid) {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, "properties");
        Properties properties = new Properties();
        if (Files.exists(path)) {
            try (FileInputStream input = new FileInputStream(path.toString())) {
                properties.load(input);
            } catch (java.io.FileNotFoundException e) {
                LOGGER.log(Level.SEVERE, "No file to stream found", e);
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "No file to load found", e);
            }
        } else
            LOGGER.log(Level.WARNING, "{0} has no properties file", uuid);
        return properties;
    }

    private boolean checkPropertiesFileForIntegrity(Properties properties) {
        return Arrays.stream(DEFAULT_PROPERTIES).allMatch(key -> properties.containsKey(key.name()));
    }

    //TODO unschön
    private PropertiesFilePOJO createPropertiesPOJO(Properties properties) {
        String id = (String) properties.get(PropertyKey.id.name());
        String filename = (String) properties.get(PropertyKey.filename.name());
        String size = (String) properties.get(PropertyKey.size.name());
        String script = (String) properties.get(PropertyKey.script.name());
        String operation = (String) properties.get(PropertyKey.operation.name());
        String state = (String) properties.get(PropertyKey.state.name());
        return new PropertiesFilePOJO(id, filename, size, script, operation, state);
    }

    // Exception by createDirecotries
    public String createUploadFileFolder(String uuid) throws IOException {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid);
        Files.createDirectories(path);
        return path.toString();
    }

    //Exception by move
    public void moveUploadFile(String path_old, String path_new, String file_name) throws IOException {
        java.nio.file.Path oldFile = Paths.get(path_old);
        java.nio.file.Path newFile = Paths.get(path_new, file_name);
        Files.move(oldFile, newFile);
    }

    public void createUploadFileProperties(String uuid, String file_name, long file_size, String script_name) {
        synchronized (operationLock_properties) {
            Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, "properties");
            Properties properties = createPropertiesFile(uuid, file_name, file_size, script_name);
            savePropertiesFile(properties, path);
            addPropertiesFileToOperationLock(properties);
        }
    }

    // outputstream -> java.io.FileNotFoundException
    // store -> IOException
    private Properties createPropertiesFile(String uuid, String file_name, long file_size, String script_name) {
        Properties properties = new Properties();
        properties.setProperty(PropertyKey.id.name(), uuid);
        properties.setProperty(PropertyKey.filename.name(), file_name);
        properties.setProperty(PropertyKey.size.name(), String.valueOf(file_size));
        properties.setProperty(PropertyKey.script.name(), script_name);
        properties.setProperty(PropertyKey.operation.name(), String.valueOf(ImportOperation.uploading));
        properties.setProperty(PropertyKey.state.name(), String.valueOf(ImportState.successful));
        properties.setProperty(PropertyKey.uploaded.name(), String.valueOf(System.currentTimeMillis()));
        return properties;
    }

    private void savePropertiesFile(Properties properties, Path path) {
        try (FileOutputStream fileOut = new FileOutputStream(path.toString())) {
            properties.store(fileOut, "");
        } catch (java.io.FileNotFoundException e) {
            LOGGER.log(Level.SEVERE, "No file to stream found", e);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No file to store found", e);
        }
    }

    private void addPropertiesFileToOperationLock(Properties properties) {
        PropertiesFilePOJO pojo = createPropertiesPOJO(properties);
        synchronized (operationLock_properties) {
            operationLock_properties.put(pojo.getId(), pojo);
        }
    }

    // runner uses this
    public void addPropertyToProperties(String uuid, PropertyKey key, String value) {
        if (operationLock_properties.containsKey(uuid)) {
            synchronized (operationLock_properties.get(uuid)) {
                Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, "properties");
                Properties properties = loadPropertiesFile(uuid);
                properties.setProperty(key.name(), value);
                savePropertiesFile(properties, path);
                addPropertiesFileToOperationLock(properties);
            }
        } else
            LOGGER.log(Level.WARNING, "{0} misses some keys. Check integrity", uuid);
    }

    // Exception by createDirecotries
    public String deleteUploadFileFolder(String uuid) throws IOException {
        synchronized (operationLock_properties.get(uuid)) {
            Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid);
            try (Stream<Path> walk = Files.walk(path)) {
                walk.sorted(Comparator.reverseOrder())
                        .map(java.nio.file.Path::toFile)
                        .forEach(File::delete);
            }
            synchronized (operationLock_properties) {
                operationLock_properties.remove(uuid);
            }
            return path.toString();
        }
    }

    public ArrayList<PropertiesFilePOJO> getPropertiesPOJOs() {
        synchronized (operationLock_properties) {
            return new ArrayList<>(operationLock_properties.values());
        }
    }

    public PropertiesFilePOJO getPropertiesPOJO(String uuid) {
        PropertiesFilePOJO result = null;
        if (operationLock_properties.containsKey(uuid)) {
            synchronized (operationLock_properties.get(uuid)) {
                result = operationLock_properties.get(uuid);
            }
        } else
            LOGGER.log(Level.WARNING, "{0} misses some keys. Check integrity", uuid);
        return result;
    }

    public String getUploadFileFolderPath(String uuid) {
        return Paths.get(preferences.get(PreferenceKey.importDataPath), uuid).toString();
    }





    private ArrayList<ScriptLogPOJO> createScriptLogList(String uuid) {
        ArrayList<ScriptLogPOJO> list_scriptLog = new ArrayList<>();
        ScriptLogPOJO pojo;
        for (LogType logType : LogType.values()) {
            pojo = createScriptLogPOJO(uuid, logType);
            if (pojo != null)
                list_scriptLog.add(pojo);
        }
        return list_scriptLog;
    }

    // readAllLines
    private ScriptLogPOJO createScriptLogPOJO(String uuid, LogType logType) {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, logType.name());
        ScriptLogPOJO pojo = null;
        if (Files.exists(path)) {
            try {
                String content = Files.readAllLines(path).stream()
                        .map(String::valueOf)
                        .collect(Collectors.joining("\n"));
                if (!content.isEmpty())
                    pojo = new ScriptLogPOJO(uuid, logType, content);
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "No file to read found", e);
            }
        } else
            LOGGER.log(Level.WARNING, "No log for {0} found", uuid);
        return pojo;
    }

    // only for python runner
    //TODO make better??
    public void reloadScriptLog(String uuid) {
        if (operationLock_scriptLog.containsKey(uuid)) {
            synchronized (operationLock_scriptLog.get(uuid)) {
                ArrayList<ScriptLogPOJO> list_scriptLog = createScriptLogList(uuid);
                updateScriptLog(uuid, list_scriptLog);
            }
        } else {
            ArrayList<ScriptLogPOJO> list_scriptLog = createScriptLogList(uuid);
            updateScriptLog(uuid, list_scriptLog);
        }
    }

    //deleteIfExists
    public String deleteScriptLog(String uuid, LogType logType) throws IOException {
        synchronized (operationLock_scriptLog.get(uuid)) {
            Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, logType.name());
            ArrayList<ScriptLogPOJO> list_scriptLog = operationLock_scriptLog.get(uuid);
            Files.deleteIfExists(path);
            list_scriptLog.removeIf(scriptLog -> scriptLog.getType().equals(logType));
            updateScriptLog(uuid, list_scriptLog);
            return path.toString();
        }
    }

    private void updateScriptLog(String uuid, ArrayList<ScriptLogPOJO> list) {
        synchronized (operationLock_scriptLog) {
            operationLock_scriptLog.put(uuid, list);
        }
    }

    public ArrayList<ScriptLogPOJO> getScriptLogs(String uuid) {
        synchronized (operationLock_scriptLog) {
            return operationLock_scriptLog.get(uuid);
        }
    }
}
