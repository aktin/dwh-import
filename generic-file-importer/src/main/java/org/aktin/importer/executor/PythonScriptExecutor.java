package org.aktin.importer.executor;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.importer.DataSourceCredsExtractor;
import org.aktin.importer.FileOperationManager;
import org.aktin.importer.ScriptOperationManager;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.enums.ScriptOperation;
import org.aktin.importer.pojos.PythonScriptTask;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.Singleton;
import javax.inject.Inject;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Logger;

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());

    private PythonRunner runner;

    @Inject
    private Preferences preferences;

    @Inject
    private FileOperationManager fileOperationManager;

    @Inject
    private ScriptOperationManager scriptOperationManager;

    @Inject
    private DataSourceCredsExtractor dataSourceCredsExtractor;

    /**
     * Extracts on startup i2b2crcdata credentials and connection url and forwards them to PythonRunner
     * Adds ongoing processing operations to PythonRunners processing queue and start a new PythonRunner in a
     * new Thread
     */
    @PostConstruct
    public void startup() {
        HashMap<String, String> credentials = dataSourceCredsExtractor.getI2b2crcCredentials();
        int timeout = Integer.parseInt(preferences.get(PreferenceKey.importScriptTimeout));
        runner = new PythonRunner(fileOperationManager, scriptOperationManager, credentials, timeout);
        addUnfinishedTasksToQueue();
        new Thread(runner).start();
    }

    /**
     * Iterates through all properties files of operationLock_properties and adds queued or unfinished operations
     * to processing queue (to avoid manually restart of processing queue in case of server shutdown)
     */
    private void addUnfinishedTasksToQueue() {
        for (Properties properties : fileOperationManager.getPropertiesFiles()) {
            PythonScriptTask task;
            PropertiesState state = PropertiesState.valueOf(properties.getProperty(PropertiesKey.state.name()));
            if (state.equals(PropertiesState.queued) || state.equals(PropertiesState.in_progress)) {
                String uuid = properties.getProperty(PropertiesKey.id.name());
                PropertiesOperation operation = PropertiesOperation.valueOf(properties.getProperty(PropertiesKey.operation.name()));
                switch (operation) {
                    case verifying:
                        task = new PythonScriptTask(uuid, ScriptOperation.verify_file);
                        break;
                    case importing:
                        task = new PythonScriptTask(uuid, ScriptOperation.import_file);
                        break;
                    default:
                        throw new IllegalStateException("Unexpected operation: " + operation.name());
                }
                runner.submitTask(task);
            }
        }
    }

    /**
     * cancels current file processing and breaks the running loop of PythonRunner
     */
    @PreDestroy
    public void shutdown() {
        runner.terminate();
    }

    /**
     * adds a new file processing task to processing queue
     *
     * @param uuid   id of file to process
     * @param method type of processing to perform (verify/import), equals the method called in python script
     */
    public void addTask(String uuid, ScriptOperation method) {
        PythonScriptTask task = new PythonScriptTask(uuid, method);
        runner.submitTask(task);
    }

    /**
     * cancels ongoing processing of file/removes file from processing queue
     *
     * @param uuid id of file to stop processing
     */
    public void cancelTask(String uuid) {
            runner.cancelTask(uuid);
    }

    /**
     * @return length of PythonRunner's current Queue
     */
    public int getQueueSize() {
        return runner.getQueueSize();
    }


}