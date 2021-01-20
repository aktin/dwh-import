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
    public void startup() {
        runner = new PythonRunner();
        addUnfinishedTasksToQueue();
        new Thread(runner).start();
    }

    public void addUnfinishedTasksToQueue() {
        for (HashMap<String, String> map_properties : fileOperationManager.getHashMaps()) {
            PythonScriptTask task;
            ImportState state = ImportState.valueOf(map_properties.get(PropertyKey.state.name()));
            if (state.equals(ImportState.queued) || state.equals(ImportState.in_progress)) {
                String uuid = map_properties.get(PropertyKey.id.name());
                ImportOperation operation = ImportOperation.valueOf(map_properties.get(PropertyKey.operation.name()));
                switch (operation) {
                    case verifying:
                        task = new PythonScriptTask(uuid, ScriptOperation.verify_file);
                        break;
                    case importing:
                        task = new PythonScriptTask(uuid, ScriptOperation.import_file);
                        break;
                    default:
                        throw new IllegalStateException("Unexpected value: " + operation.name());
                }
                runner.submit(task);
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
        HashMap<String, String> map_properties = fileOperationManager.getPropertiesHashMap(uuid);
        ImportState state = ImportState.valueOf(map_properties.get(PropertyKey.state.name()));
        if (state.equals(ImportState.successful))
            return true;
        else
            return false;
    }

}
