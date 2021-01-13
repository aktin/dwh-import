package org.aktin.scripts;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.dwh.admin.importer.*;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Stream;

// TODO COMMENTS + JAVADOC
// TODO Exceptions rein?

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());
    private final ScriptKey SCRIPT_KEY = ScriptKey.MIMETYPE;

    private PythonRunner runner;

    @Inject
    private ImportStateManager importStateManager;

    @Inject
    private Preferences prefs;


    @PostConstruct
    public void startup() throws IOException {
        runner = new PythonRunner();
        addUnfinishedTasksToQueue();
        new Thread(runner).start();
    }

    // only final variables within lambda -> check atomicResponse o.ä.
    public void addUnfinishedTasksToQueue() throws IOException {
        String path = prefs.get(PreferenceKey.importDataPath);
        final ImportState[] import_state = {null};
        final ScriptMethod[] method_script = {null};
        try (Stream<Path> walk = Files.walk(Paths.get(path))) {
            walk.filter(Files::isDirectory)
                    .filter(path_dir -> !path_dir.equals(Paths.get(path)))
                    .map(java.nio.file.Path::getFileName)
                    .map(java.nio.file.Path::toString)
                    .forEach(uuid -> {
                        if (importStateManager.checkPropertyFileForIntegrity(uuid)) {
                            import_state[0] = importStateManager.getStateProperty(uuid);
                            switch (import_state[0]) {
                                case verifying:
                                case verification_queued:
                                    method_script[0] = ScriptMethod.verify_file;
                                    break;
                                case importing:
                                case importing_queued:
                                    method_script[0] = ScriptMethod.import_file;
                                    break;
                            }
                            if (method_script[0] != null) {
                                PythonScriptTask task = new PythonScriptTask(uuid, method_script[0]);
                                runner.submit(task);
                            }
                        }
                    });
        }
    }

    @PreDestroy
    public void shutdown() {
        runner.terminate();
    }

    public boolean addTask(String uuid, ScriptMethod method_script) throws IOException {
        String path_file = importStateManager.getPropertyByKey(uuid, PropertyKey.path);
        String name_script = importStateManager.getPropertyByKey(uuid, PropertyKey.script);

        if (doesContentTypeMatchScript(path_file, name_script)) {
            PythonScriptTask task = new PythonScriptTask(uuid, method_script);
            runner.submit(task);
            return true;
        } else
            return false;
    }

    public void cancelTask(String uuid) {
        runner.cancel(uuid);
    }

    public boolean isTaskDone(String uuid) {
        ImportState import_state = importStateManager.getStateProperty(uuid);
        if (import_state.equals(ImportState.verification_successful) || import_state.equals(ImportState.import_successful))
            return true;
        else
            return false;
    }

    // TODO: Erweiterbar machen?
    // was ist mit getScriptValueByKey?
    private boolean doesContentTypeMatchScript(String path_file, String name_script) throws IOException {
        File script = new File(Paths.get(prefs.get(PreferenceKey.importScriptPath), name_script).toString());
        String script_value = getScriptValueByKey(script, SCRIPT_KEY);
        switch (script_value) {
            case "application/zip":
                int[] header_bytes_array = new int[]{0x504B0304, 0x504B0506, 0x504B0708};
                return checkContentBytes(path_file, header_bytes_array);
            default:
                LOGGER.log(Level.SEVERE, "Appropriate script_value could not be found");
                return false;  //TODO ODER LIEBER EXCEPTION?
        }
    }

    // oder aus Endpoint nehmen?
    public String getScriptValueByKey(File script, ScriptKey key) {
        String line, line_key;
        String result = "";
        try (BufferedReader br = new BufferedReader(new FileReader(script))) {
            for (int i = 0; i < 15; i++) {
                line = br.readLine();
                if (line != null && line.startsWith("#") && line.contains("@") && line.contains("=")) {
                    line_key = line.substring(line.indexOf('@') + 1, line.indexOf('='));
                    if (line_key != null && line_key.equals(key.name())) {
                        result = line.substring(line.indexOf('=') + 1);
                    }
                }
            }
        } catch (FileNotFoundException e) {
            LOGGER.log(Level.SEVERE, "File could not be found", e);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "An Exception was thrown", e);
        } finally {
            return result;
        }
    }

    private boolean checkContentBytes(String path_file, int[] bytesArray) throws IOException {
        RandomAccessFile raf = new RandomAccessFile(path_file, "r");
        int fileSignature = raf.readInt();
        for (int bytes : bytesArray) {
            if (fileSignature == bytes)
                return true;
        }
        return false;
    }
}
