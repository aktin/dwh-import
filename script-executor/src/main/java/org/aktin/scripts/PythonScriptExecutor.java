package org.aktin.scripts;

import org.aktin.dwh.admin.importer.*;
import org.aktin.dwh.admin.importer.enums.ImportOperation;
import org.aktin.dwh.admin.importer.enums.ImportState;
import org.aktin.dwh.admin.importer.pojos.PropertiesFilePOJO;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.*;
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
        for (PropertiesFilePOJO pojo_properties : fileOperationManager.getPropertiesPOJOs()) {
            PythonScriptTask task;
            ImportState state = ImportState.valueOf(pojo_properties.getState());
            if (state.equals(ImportState.queued) || state.equals(ImportState.in_progress)) {
                String uuid = pojo_properties.getId();
                ImportOperation operation = ImportOperation.valueOf(pojo_properties.getOperation());
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
        PropertiesFilePOJO pojo_properties = fileOperationManager.getPropertiesPOJO(uuid);
        ImportState state = ImportState.valueOf(pojo_properties.getState());
        return state.equals(ImportState.successful);
    }

}
