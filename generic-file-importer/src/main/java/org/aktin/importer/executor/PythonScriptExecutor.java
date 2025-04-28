package org.aktin.importer.executor;

import org.aktin.Preferences;
import org.aktin.dwh.BrokerResourceManager;
import org.aktin.dwh.PreferenceKey;
import org.aktin.dwh.SystemStatusManager;
import org.aktin.importer.DataSourceCredsExtractor;
import org.aktin.importer.FileOperationManager;
import org.aktin.importer.ScriptOperationManager;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.pojos.DatabaseCreds;
import org.aktin.importer.pojos.PythonScriptTask;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.Singleton;
import javax.inject.Inject;
import java.util.*;
import java.util.logging.Logger;

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());

    protected PythonRunner runner;

    @Inject
    private SystemStatusManager systemStatusManager;

    @Inject
    private BrokerResourceManager brokerResourceManager;

    @Inject
    private Preferences preferences;

    @Inject
    protected FileOperationManager fileOperationManager;

    @Inject
    private ScriptOperationManager scriptOperationManager;

    @Inject
    private DataSourceCredsExtractor dataSourceCredsExtractor;

    /**
     * First, collects installed python packages and puts them as a resource on the AKTIN Broker (as a
     * CompletableFuture). Extracts on startup i2b2crcdata credentials and connection url and forwards them
     * to PythonRunner. Adds ongoing processing operations to PythonRunners processing queue and start a
     * new PythonRunner in a new Thread.
     */
    @PostConstruct
    public void startup() {
        uploadPythonPackageVersions();
        DatabaseCreds credentials = dataSourceCredsExtractor.getI2b2crcCredentials();
        int timeout = Integer.parseInt(preferences.get(PreferenceKey.importScriptTimeout));
        runner = new PythonRunner(fileOperationManager, scriptOperationManager, credentials, timeout);
        addUnfinishedTasksToQueue();
        new Thread(runner).start();
    }

    /**
     * Iterates through all properties files of operationLock_properties and adds queued or unfinished operations
     * to processing queue (to avoid manually restart of processing queue in case of server shutdown)
     */
    protected void addUnfinishedTasksToQueue() {
        for (Properties properties : fileOperationManager.getPropertiesFiles()) {
            PythonScriptTask task;
            PropertiesState state = PropertiesState.valueOf(properties.getProperty(PropertiesKey.state.name()));
            if (state.equals(PropertiesState.queued) || state.equals(PropertiesState.in_progress)) {
                String uuid = properties.getProperty(PropertiesKey.id.name());
                task = new PythonScriptTask(uuid);
                runner.submitTask(task);
            }
        }
    }

    /**
     * Collect (hard-coded) Python apt packages and put them as a new resource group on the AKTIN Broker.
     */
    private void uploadPythonPackageVersions() {
        Properties versions_python = collectPythonPackageVersions();
        brokerResourceManager.putMyResourceProperties("python", versions_python);
    }

    /**
     * Iterate through a list of necessary Python packages and get the corresponding installed version.
     * Package names are from apt package manager (ubuntu is default operating system on dwh)
     * @return Properties with {package name} = {installed version}
     */
    private Properties collectPythonPackageVersions() {
        Properties properties = new Properties();
        List<String> packages_python = Arrays.asList("python3", "python3-pandas", "python3-numpy", "python3-requests", "python3-sqlalchemy", "python3-psycopg2", "python3-postgresql", "python3-zipp", "python3-plotly", "python3-unicodecsv", "python3-gunicorn");
        Map<String, String> versions_python = systemStatusManager.getLinuxPackagesVersion(packages_python);
        properties.putAll(versions_python);
        return properties;
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
     */
    public void addTask(String uuid) {
        PythonScriptTask task = new PythonScriptTask(uuid);
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
