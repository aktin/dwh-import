package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.enums.LogType;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.pojos.ScriptLog;

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

@Singleton
public class FileOperationManager {

    private static final Logger LOGGER = Logger.getLogger(FileOperationManager.class.getName());

    @Inject
    private Preferences preferences;

    private final Map<String, Properties> operationLock_properties = new HashMap<>();
    private final Map<String, List<ScriptLog>> operationLock_scriptLog = new HashMap<>();

    /**
     * Iterates on startup through all directories in {importDataPath} and loads properties-Files
     * within as java properties. Checks the keys of these java properties against the enums in
     * PropertiesKeys. If found keys correspond, properties objects stored in operationLock_properties.
     * Existing script logs are loaded into operationLock_scriptLog simultaneously
     * All future reading of file metadata is carried out via the operationLock
     */
    @PostConstruct
    public void initOperationLock() {
        Properties properties;
        List<ScriptLog> list_scriptLog;
        for (String uuid : getUploadedFileIDs()) {
            properties = loadFileMetadata(uuid);
            if (checkFileMetadataForIntegrity(properties)) {
                synchronized (operationLock_properties) {
                    operationLock_properties.put(uuid, properties);
                }
                synchronized (operationLock_scriptLog) {
                    list_scriptLog = loadScriptLogs(uuid);
                    operationLock_scriptLog.put(uuid, list_scriptLog);
                }
            } else
                LOGGER.log(Level.WARNING, "{0} misses some keys. Ignored...", uuid);
        }
    }

    /**
     * Iterates through all directories in {importDataPath} and collects directory names
     * Directory names are equal to UUID of uploaded file
     *
     * @return list of directory names in {importDataPath}
     */
    private List<String> getUploadedFileIDs() {
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

    /**
     * Loads java properties file (metadata) from directory of given file id
     *
     * @param uuid universally unique id of file
     * @return java properties file of uploaded file
     */
    private Properties loadFileMetadata(String uuid) {
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

    /**
     * Iterates through PropertiesKey and checks if enums match with keys of given properties file
     *
     * @param properties java properties file of uploaded file
     * @return boolean if properties file contains all keys of PropertiesKey
     */
    private boolean checkFileMetadataForIntegrity(Properties properties) {
        return Arrays.stream(PropertiesKey.values()).allMatch(key -> properties.containsKey(key.name()));
    }

    /**
     * Creates a new directory in {importDataPath} with the name {uuid}
     *
     * @param uuid universally unique id of uploaded file
     * @return String path of newly created directory
     * @throws IOException if path for Files.createDirectories is invalid
     */
    public String createUploadFileFolder(String uuid) throws IOException {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid);
        Files.createDirectories(path);
        return path.toString();
    }

    /**
     * Moves and renames a file from one path to another
     *
     * @param path_old  current path of file (includes file name)
     * @param path_new  designated path of file (without file name)
     * @param file_name new name of file
     * @throws IOException if path arguments given to Files.move() are invalid
     */
    public void moveUploadFile(String path_old, String path_new, String file_name) throws IOException {
        java.nio.file.Path oldFile = Paths.get(path_old);
        java.nio.file.Path newFile = Paths.get(path_new, file_name);
        Files.move(oldFile, newFile);
    }

    /**
     * Creates a new java properties object from given input and writes it to corresponding file folder and adds the
     * properties file to the operationLock
     * Is only used by FileManagerEndpoint
     *
     * @param uuid      id of uploaded file
     * @param file_name original file name
     * @param file_size file size in bytes
     * @param script_id id of corresponding processing script
     */
    public void createNewPropertiesFile(String uuid, String file_name, long file_size, String script_id) {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, "properties");
        Properties properties = createPropertiesFile(uuid, file_name, file_size, script_id);
        writePropertiesFile(path, properties);
        addPropertiesFileToOperationLock(properties);
    }

    /**
     * Creates a new java properties object from given input
     *
     * @param uuid      id of uploaded file
     * @param file_name original file name
     * @param file_size file size in bytes
     * @param script_id id of corresponding processing script
     * @return properties file of newly uploaded file
     */
    private Properties createPropertiesFile(String uuid, String file_name, long file_size, String script_id) {
        Properties properties = new Properties();
        properties.setProperty(PropertiesKey.id.name(), uuid);
        properties.setProperty(PropertiesKey.filename.name(), file_name);
        properties.setProperty(PropertiesKey.size.name(), String.valueOf(file_size));
        properties.setProperty(PropertiesKey.script.name(), script_id);
        properties.setProperty(PropertiesKey.operation.name(), String.valueOf(PropertiesOperation.uploading));
        properties.setProperty(PropertiesKey.state.name(), String.valueOf(PropertiesState.successful));
        properties.setProperty("uploaded", String.valueOf(System.currentTimeMillis()));
        return properties;
    }

    /**
     * Writes java properties object to given path
     *
     * @param path       path to store properties in (including filename)
     * @param properties java properties object to save on hard drive
     */
    private void writePropertiesFile(Path path, Properties properties) {
        synchronized (operationLock_properties) {
            try (FileOutputStream fileOut = new FileOutputStream(path.toString())) {
                properties.store(fileOut, "");
            } catch (java.io.FileNotFoundException e) {
                LOGGER.log(Level.SEVERE, "No file to stream found", e);
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "No file to store found", e);
            }
        }
    }

    /**
     * Adds a given java properties object to the operationLock hashmap
     *
     * @param properties java properties object to add to operationLock
     */
    private void addPropertiesFileToOperationLock(Properties properties) {
        synchronized (operationLock_properties) {
            operationLock_properties.put(properties.getProperty(PropertiesKey.id.name()), properties);
        }
    }

    /**
     * Adds new property or updates existing property in the java properties file of a given uuid
     * Properties file is stored on hard drive and added to operationLock after updating
     * Only used by PythonRunner to update operation and state of file
     *
     * @param uuid  id of uploaded file
     * @param key   property key to add or update
     * @param value value of corresponding key
     */
    public void addPropertyToPropertiesFile(String uuid, String key, String value) {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, "properties");
        Properties properties;
        if (operationLock_properties.containsKey(uuid)) {
            properties = operationLock_properties.get(uuid);
            properties.setProperty(key, value);
            writePropertiesFile(path, properties);
            addPropertiesFileToOperationLock(properties);
        } else
            LOGGER.log(Level.WARNING, "{0} misses some keys. Check integrity", uuid);
    }

    /**
     * Walks recursively through given directory and deletes all files within. Deletes directory itself at the end
     * Directory name equals uuid of uploaded file
     *
     * @param uuid universally unique id of file
     * @return string path of deleted folder
     * @throws IOException if path to walk is invalid
     */
    public String deleteUploadFileFolder(String uuid) throws IOException {
        synchronized (operationLock_properties) {
            Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid);
            try (Stream<Path> walk = Files.walk(path)) {
                walk.sorted(Comparator.reverseOrder())
                        .map(java.nio.file.Path::toFile)
                        .forEach(File::delete);
            }
            operationLock_properties.remove(uuid);
            return path.toString();
        }
    }


    /**
     * @return List with all properties objects in operationLock_properties
     */
    public List<Properties> getPropertiesFiles() {
        return new ArrayList<>(operationLock_properties.values());
    }

    /**
     * @param uuid id of uploaded file
     * @return corresponding properties object out of operationLock
     * @throws IllegalArgumentException if properties object could not be found
     */
    public Properties getPropertiesFile(String uuid) throws IllegalArgumentException {
        Properties result;
        if (operationLock_properties.containsKey(uuid)) {
            result = operationLock_properties.get(uuid);
        } else
            throw new IllegalArgumentException(String.format("%s could not be found in properties cache", uuid));
        return result;
    }

    /**
     * @param uuid id of uploaded file
     * @return string path to directory of file
     */
    public String getUploadFileFolderPath(String uuid) {
        return Paths.get(preferences.get(PreferenceKey.importDataPath), uuid).toString();
    }

    /**
     * Loads script logs from directory of given uuid and adds them to operation lock
     *
     * @param uuid id of file to reload logs
     */
    public void reloadScriptLogs(String uuid) {
        List<ScriptLog> list_scriptLog = loadScriptLogs(uuid);
        synchronized (operationLock_scriptLog) {
            operationLock_scriptLog.put(uuid, list_scriptLog);
        }
    }

    /**
     * Loads script logs from directory of given uuid and returns them as a list of ScriptLog
     * Only two logs can exist for each file (stdError and stdOutput)
     *
     * @param uuid id of file to load logs from
     * @return List with loaded logs as ScriptLog objects
     */
    private List<ScriptLog> loadScriptLogs(String uuid) {
        List<ScriptLog> list_scriptLog = new ArrayList<>();
        ScriptLog scriptLog;
        for (LogType logType : LogType.values()) {
            if (hasScriptLog(uuid, logType)) {
                try {
                    scriptLog = loadScriptLog(uuid, logType);
                    list_scriptLog.add(scriptLog);
                } catch (IOException e) {
                    LOGGER.log(Level.SEVERE, "Script log could not be found for %s", uuid);
                }
            }
        }
        return list_scriptLog;
    }

    /**
     * Checks if a given file id has an existing log in its directory
     *
     * @param uuid    id of file to check existing logs
     * @param logType type of log to check (stdError or stdOutput)
     * @return boolean if corresponding log exists
     */
    private boolean hasScriptLog(String uuid, LogType logType) {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, logType.name());
        boolean result = false;
        if (Files.exists(path))
            result = true;
        else
            LOGGER.log(Level.WARNING, "No log for {0} found", uuid);
        return result;
    }

    /**
     * Loads a script log file in given directory as a ScriptLog objet
     *
     * @param uuid    id of file to load log from
     * @param logType type of log to load (stdError or stdOutput)
     * @return ScriptLog object with logType, corresponding uuid and content
     * @throws FileNotFoundException if type of log does not exist in directory
     */
    private ScriptLog loadScriptLog(String uuid, LogType logType) throws IOException {
        Path path = Paths.get(preferences.get(PreferenceKey.importDataPath), uuid, logType.name());
        ScriptLog scriptLog;
        if (Files.exists(path)) {
            String content = Files.readAllLines(path).stream()
                    .map(String::valueOf)
                    .collect(Collectors.joining("\n"));
            scriptLog = new ScriptLog(uuid, logType, content);
        } else
            throw new FileNotFoundException();
        return scriptLog;
    }

    /**
     * Removes script log entry of corresponding uuid from operationLock (physical delete operation is done via
     * deleteUploadFileFolder)
     *
     * @param uuid id of file to delete logs from
     */
    public void removeScriptLogs(String uuid) {
        synchronized (operationLock_scriptLog) {
            operationLock_scriptLog.remove(uuid);
        }
    }

    /**
     * @return List with scriptLog objects for corresponding uuid
     */
    public List<ScriptLog> getScriptLogs(String uuid) {
        List<ScriptLog> result;
        if (operationLock_scriptLog.containsKey(uuid)) {
            result = operationLock_scriptLog.get(uuid);
        } else
            throw new IllegalArgumentException(String.format("Script logs for %s could not be found in cache", uuid));
        return result;
    };
}
