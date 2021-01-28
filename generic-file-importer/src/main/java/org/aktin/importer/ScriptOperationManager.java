package org.aktin.importer;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.enums.ScriptKey;
import org.aktin.importer.pojos.ScriptFilePOJO;

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

// TODO COMMENTS + JAVA DOC

@Singleton
public class ScriptOperationManager {

    private static final Logger LOGGER = Logger.getLogger(ScriptOperationManager.class.getName());

    @Inject
    private Preferences preferences;

    private final HashMap<String, ScriptFilePOJO> operationLock_script = new HashMap<>();

    // only scripts with all keys in operationLock
    @PostConstruct
    public void initOperationLock() {
        synchronized (operationLock_script) {
            HashMap<String, String> map;
            ScriptFilePOJO pojo_script;
            for (String name_script : getScriptNames()) {
                map = createScriptHashMap(name_script);
                if (checkScriptHashMapForIntegrity(map)) {
                    pojo_script = createScriptPOJO(map);
                    operationLock_script.put(pojo_script.getId(), pojo_script);
                } else
                    LOGGER.log(Level.WARNING, "{0} misses some keys", name_script);
            }
        }
    }

    // files.walk -> IOExveption
    private ArrayList<String> getScriptNames() {
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

    private HashMap<String, String> createScriptHashMap(String name_script) {
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
        } catch (FileNotFoundException e) {
            LOGGER.log(Level.SEVERE, "No file to read found", e);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "No line to read found", e);
        }
        return result;
    }

    private boolean checkScriptHashMapForIntegrity(HashMap<String, String> map) {
        return Arrays.stream(ScriptKey.values()).allMatch(key -> map.containsKey(key.name()));
    }

    private ScriptFilePOJO createScriptPOJO(HashMap<String, String> map) {
        String id = map.get(ScriptKey.ID.name());
        String viewname = map.get(ScriptKey.VIEWNAME.name());
        String version = map.get(ScriptKey.VERSION.name());
        String mimetype = map.get(ScriptKey.MIMETYPE.name());
        return new ScriptFilePOJO(id, viewname, version, mimetype);
    }

    public ArrayList<ScriptFilePOJO> getScriptPOJOs() {
        synchronized (operationLock_script) {
            return new ArrayList<>(operationLock_script.values());
        }
    }

    public ScriptFilePOJO getScriptPOJO(String name_script) {
        ScriptFilePOJO result = null;
        if (operationLock_script.containsKey(name_script)) {
            synchronized (operationLock_script.get(name_script)) {
                result = operationLock_script.get(name_script);
            }
        } else
            LOGGER.log(Level.WARNING, "{0} misses some keys. Check integrity", name_script);
        return result;
    }

    public String getScriptPath(String name_script) {
        return Paths.get(preferences.get(PreferenceKey.importScriptPath), name_script).toString();
    }
}
