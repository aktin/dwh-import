package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.ScriptKey;
import org.aktin.importer.pojos.ScriptFile;

import javax.annotation.PostConstruct;
import javax.ejb.Singleton;
import javax.inject.Inject;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Stream;

@Singleton
public class ScriptOperationManager {

    private static final Logger LOGGER = Logger.getLogger(ScriptOperationManager.class.getName());

    @Inject
    private Preferences preferences;

    /**
     * HashMap to store metadata of processing scripts as {id of script, ScriptFile object}
     */
    private final HashMap<String, ScriptFile> operationLock_script = new HashMap<>();

    /**
     * Iterates on startup through all files in {importScriptPath}
     * Checks these files for possible metadata information (key-value pairs)
     * If found keys correspond to enums in ScriptKey, key-value pairs are converted
     * to a ScriptFile object and stored in operationLock_script
     * All future reading of script metadata is carried out via operationLock_script
     */
    @PostConstruct
    public void initOperationLock() {
        synchronized (operationLock_script) {
            HashMap<String, String> map;
            ScriptFile pojo_script;
            for (String name_script : getScriptNames()) {
                map = loadScriptMetadata(name_script);
                if (checkScriptMetadataForIntegrity(map)) {
                    pojo_script = createScriptFile(map);
                    operationLock_script.put(pojo_script.getId(), pojo_script);
                } else
                    LOGGER.log(Level.WARNING, "{0} misses some keys", name_script);
            }
        }
    }

    /**
     * Iterates through all regular files in {importScriptPath} and collects file names
     *
     * @return list of file names in {importScriptPath}
     */
    private List<String> getScriptNames() {
        Path path = Paths.get(preferences.get(PreferenceKey.importScriptPath));
        ArrayList<String> list_scripts = new ArrayList<>();
        try (Stream<Path> walk = Files.walk(path)) {
            walk.filter(Files::isRegularFile)
                    .map(java.nio.file.Path::getFileName)
                    .map(java.nio.file.Path::toString)
                    .forEach(list_scripts::add);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No file to walk found", e);
        }
        return list_scripts;
    }

    /**
     * Iterates through first 15 line of a script in {importScriptPath} and writes encountered metadata information
     * (key-value pairs) in HashMap. Possible metadata is tagged as #@KEY=VALUE
     *
     * @param name_script filename of the script
     * @return Map of found key-value pairs in given script
     */
    private HashMap<String, String> loadScriptMetadata(String name_script) {
        String path = Paths.get(preferences.get(PreferenceKey.importScriptPath), name_script).toString();
        String line, key, value;
        HashMap<String, String> result = new HashMap<>();
        try (BufferedReader br = new BufferedReader(new FileReader(path))) {
            for (int i = 0; i < 15; i++) {
                line = br.readLine();
                if (line != null && line.startsWith("#") && line.contains("@") && line.contains("=")) {
                    key = line.substring(line.indexOf('@') + 1, line.indexOf('='));
                    value = line.substring(line.indexOf('=') + 1);
                    result.put(key, value);
                }
            }
            result.put("path", path);
        } catch (FileNotFoundException e) {
            LOGGER.log(Level.SEVERE, "No file to read found", e);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No line to read found", e);
        }
        return result;
    }

    /**
     * Iterates through ScriptKey and checks if enums match with keys of given map
     *
     * @param map map with key-value pairs of a script
     * @return boolean if map contains all enum keys
     */
    private boolean checkScriptMetadataForIntegrity(HashMap<String, String> map) {
        return Arrays.stream(ScriptKey.values()).allMatch(key -> map.containsKey(key.name()));
    }

    /**
     * Creates a ScriptFile object out of a given map
     *
     * @param map map with key-value pairs of a script
     * @return ScriptFile object
     */
    private ScriptFile createScriptFile(HashMap<String, String> map) {
        String id = map.get(ScriptKey.ID.name());
        String viewname = map.get(ScriptKey.VIEWNAME.name());
        String version = map.get(ScriptKey.VERSION.name());
        String mimetype = map.get(ScriptKey.MIMETYPE.name());
        String path = map.get("path");
        return new ScriptFile(id, viewname, version, mimetype, path);
    }

    /**
     * @return List with all ScriptFile objects in operationLock_script
     */
    public List<ScriptFile> getScripts() {
        return new ArrayList<>(operationLock_script.values());
    }

    /**
     * @param id_script id of requested script
     * @return corresponding ScriptFile object
     */
    public ScriptFile getScript(String id_script) {
        ScriptFile result = null;
        if (operationLock_script.containsKey(id_script)) {
            result = operationLock_script.get(id_script);
        } else
            LOGGER.log(Level.WARNING, "{0} misses some keys. Check integrity", id_script);
        return result;
    }
}
