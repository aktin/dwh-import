package org.aktin.scripts;

import org.aktin.dwh.admin.importer.*;
import org.aktin.dwh.admin.importer.enums.ImportOperation;
import org.aktin.dwh.admin.importer.enums.ImportState;
import org.aktin.dwh.admin.importer.enums.PropertyKey;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Logger;

// TODO COMMENTS + JAVADOC

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());

    private PythonRunner runner;

    @Inject
    private FileOperationManager fileOperationManager;


    @PostConstruct
    public void startup() throws IOException {
        runner = new PythonRunner();
        addUnfinishedTasksToQueue();
        new Thread(runner).start();
    }

    public void addUnfinishedTasksToQueue() throws IOException {
        PythonScriptTask task;
        ArrayList<String> list_uuids = fileOperationManager.getUploadedFileIDs();
        for (String uuid : list_uuids) {
            HashMap<String, String> map_properties = fileOperationManager.checkPropertiesFileForIntegrity(uuid);
            if (map_properties != null && !map_properties.isEmpty()) {
                ImportState state = ImportState.valueOf(map_properties.get(PropertyKey.state));
                if (state.equals(ImportState.queued) || state.equals(ImportState.in_progress)) {
                    switch (ImportOperation.valueOf(map_properties.get(PropertyKey.operation))) {
                        case verifying:
                            task = new PythonScriptTask(uuid, ScriptOperation.verify_file);
                            break;
                        case importing:
                            task = new PythonScriptTask(uuid, ScriptOperation.import_file);
                            break;
                        default:
                            throw new IllegalStateException("Unexpected value: " + ImportOperation.valueOf(map_properties.get(PropertyKey.operation)));
                    }
                    runner.submit(task);
                }
            }
        }
    }

    @PreDestroy
    public void shutdown() {
        runner.terminate();
    }

    /**
     * @param uuid
     * @param method
     * @throws IOException
     */
    public void addTask(String uuid, ScriptOperation method) {
        PythonScriptTask task = new PythonScriptTask(uuid, method);
        runner.submit(task);
    }

    public void cancelTask(String uuid) {
        runner.cancel(uuid);
    }

    public boolean isTaskDone(String uuid) {
        ImportState state = ImportState.valueOf(fileOperationManager.getPropertyByKey(uuid, PropertyKey.state));
        if (state.equals(ImportState.successful))
            return true;
        else
            return false;
    }

}
