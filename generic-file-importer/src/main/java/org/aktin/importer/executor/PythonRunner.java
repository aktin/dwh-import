package org.aktin.importer.executor;

import org.aktin.importer.FileOperationManager;
import org.aktin.importer.ScriptOperationManager;
import org.aktin.importer.enums.PropertiesOperation;
import org.aktin.importer.enums.PropertiesState;
import org.aktin.importer.enums.LogType;
import org.aktin.importer.enums.PropertiesKey;
import org.aktin.importer.pojos.DatabaseCreds;
import org.aktin.importer.pojos.PythonScriptTask;
import org.aktin.importer.pojos.ScriptFile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PythonRunner implements Runnable {

    private static final Logger LOGGER = Logger.getLogger(PythonRunner.class.getName());

    private final FileOperationManager fileOperationManager;
    private final ScriptOperationManager scriptOperationManager;
    private final DatabaseCreds i2b2crcCredentials;
    private final int scriptProcessTimeout;

    private final Queue<PythonScriptTask> queue;
    private String runningId;
    private Process process;
    private int exitCode = 0;
    private boolean exit = false;

    /**
     * Constructor for PythonRunner runnable, creates a new empty queue to store tasks in
     *
     * @param fileOperationManager   Singleton Class FileOperationManager (used to read/write in propertiesFile)
     * @param scriptOperationManager Singleton Class ScriptOperationManager (used to read ScriptFile)
     * @param credentials            Pojo with i2b2crcdata credentials and connection-url
     */
    public PythonRunner(
            FileOperationManager fileOperationManager,
            ScriptOperationManager scriptOperationManager,
            DatabaseCreds credentials,
            int timeout) {
        queue = new LinkedList<>();
        this.fileOperationManager = fileOperationManager;
        this.scriptOperationManager = scriptOperationManager;
        this.i2b2crcCredentials = credentials;
        this.scriptProcessTimeout = timeout;
    }

    /**
     * Working loop of runnable, is stopped when exit = true
     * If queue is empty, waits till queue has content
     * If queue is not empty, executes tasks in queue by FIFO
     */
    @Override
    public void run() {
        LOGGER.info("Processing thread started");
        while (!exit) {
            PythonScriptTask task;
            synchronized (queue) {
                if (queue.isEmpty()) {
                    try {
                        queue.wait();
                    } catch (InterruptedException e) {
                        LOGGER.log(Level.WARNING, "Processing thread was interrupted", e);
                        Thread.currentThread().interrupt();
                    }
                }
                if (queue.isEmpty())
                    continue;
                else
                    task = queue.remove();
            }
            if (exit)
                break;
            executeTask(task);
        }
        LOGGER.info("Processing thread ended");
    }

    /**
     * Stops working loop of runnable, if task is currently executed, execution process is stopped prior
     */
    public void terminate() {
        exit = true;
        if (process != null) {
            killProcess();
        }
        synchronized (queue) {
            queue.notify();
        }
    }

    /**
     * Adds a new task object to queue and sets corresponding propertiesFile to operation of task (verify or import)
     * and state to 'queued'
     *
     * @param task PythonScriptTask which is added to queue
     */
    public void submitTask(PythonScriptTask task) {
        synchronized (queue) {
            queue.add(task);
            changeTaskState(task.getId(), PropertiesState.queued);
            queue.notify();
        }
    }

    /**
     * @return length of current runner queue
     */
    public int getQueueSize() {
        return this.queue.size();
    }

    /**
     * Cancels processing of given task
     * If task is currently executed, execution process is stopped
     * If task is still in queue, it is removed from queue
     *
     * @param uuid id of file to cancel processing
     */
    public void cancelTask(String uuid) {
        if (runningId.equals(uuid)) {
            exitCode = 3;
            killProcess();
        } else {
            synchronized (queue) {
                for (PythonScriptTask task : queue) {
                    if (task.getId().equals(uuid)) {
                        queue.remove(task);
                        break;
                    }
                }
            }
        }
        changeTaskState(uuid, PropertiesState.cancelled);
    }

    /**
     * Stops the current execution process
     */
    private void killProcess() {
        try {
            process.destroy();
            if (process != null && !process.waitFor(10, TimeUnit.SECONDS)) {
                process.destroyForcibly();
                process.waitFor();
            }
        } catch (InterruptedException e) {
            LOGGER.log(Level.WARNING, "Killing thread was interrupted", e);
            Thread.currentThread().interrupt();
        }
    }

    /**
     * Runs given python script method on given file:
     * 1. Collects corresponding ScriptFile and PropertiesFile of given id
     * 2. Creates stdOut and stdError files to collect logs of python script
     * 3. Creates a python process with "path to script" "method to execute" and "path to file to process"
     * 4. Sets used information of python script as environment variables
     * 5. Starts script and controls a hang-up by checking the length of stdOutput each 10min (if no change in output
     * was detected 10 times in a row, script is stopped by timeout)
     * 6. Writes corresponding outcome of script (success, error, timeout) into propertiesFile after script finishes
     * 7. Created script logs are reloaded into operationLock at the end
     *
     * @param task PythonScriptTask to process
     */
    private void executeTask(PythonScriptTask task) {
        String uuid = task.getId();
        try {
            runningId = uuid;
            changeTaskState(uuid, PropertiesState.in_progress);

            Properties properties = fileOperationManager.getPropertiesFile(uuid);
            ScriptFile script = getScriptByPropertiesFile(properties);
            String path_folder = fileOperationManager.getUploadFileFolderPath(uuid);

            File output = initLogFile(path_folder, LogType.stdOutput);
            File error = initLogFile(path_folder, LogType.stdError);

            String path_file = Paths.get(path_folder, properties.getProperty(PropertiesKey.filename.name())).toString();
            ProcessBuilder processBuilder = new ProcessBuilder("python3", script.getPath(), path_file);
            processBuilder.redirectError(error);
            processBuilder.redirectOutput(output);

            String path_aktin_properties = Paths.get(System.getProperty("jboss.server.config.dir"), "aktin.properties").toString();
            Map<String, String> vars_environment = processBuilder.environment();
            vars_environment.put("username", i2b2crcCredentials.getUsername());
            vars_environment.put("password", i2b2crcCredentials.getPassword());
            vars_environment.put("connection-url", i2b2crcCredentials.getConnectionUrl());
            vars_environment.put("uuid", uuid);
            vars_environment.put("script_id", script.getId());
            vars_environment.put("script_version", script.getVersion());
            vars_environment.put("path_aktin_properties", path_aktin_properties);

            process = processBuilder.start();

            while (process.isAlive()) {
                try {
                    if (!process.waitFor(this.scriptProcessTimeout, TimeUnit.MILLISECONDS)) {
                        exitCode = 2;
                        killProcess();
                    }
                } catch (InterruptedException ignored) {
                }
            }

            if (process.exitValue() == 0) {
                changeTaskState(uuid, PropertiesState.successful);
                writeSuccessProperty(properties);
            } else {
                if (exitCode == 2)
                    changeTaskState(uuid, PropertiesState.timeout);
                else if (exitCode == 3)
                    ; // changeTaskState already handled by cancelTask()
                else
                    changeTaskState(uuid, PropertiesState.failed);
            }
        } catch (IOException | NullPointerException e) {
            if (process != null) killProcess();
            changeTaskState(uuid, PropertiesState.failed);
            LOGGER.log(Level.SEVERE, "Execution of task failed", e);
        } finally {
            runningId = null;
            process = null;
            exitCode = 0;
            fileOperationManager.loadScriptLogs(uuid);
        }
    }

    /**
     * Gets the corresponding ScriptFile of given properties File
     *
     * @param properties properties to get Script to
     * @return ScriptFile out of scriptOperationManager.operationLock
     * @throws FileNotFoundException if ScriptFile not in operationLock
     */
    private ScriptFile getScriptByPropertiesFile(Properties properties) throws FileNotFoundException {
        String id_script = properties.getProperty(PropertiesKey.script.name());
        return scriptOperationManager.getScript(id_script);
    }

    /**
     * Creates a file named after enum in logType in given folder, deletes file and recreates it if
     * already existing in folder
     *
     * @param path_folder string path to the corresponding folder
     * @param logType     name and function of file
     * @return File object of newly created file
     * @throws IOException if invalid path for delete operation
     */
    private File initLogFile(String path_folder, LogType logType) throws IOException {
        Path path = Paths.get(path_folder, logType.name());
        Files.deleteIfExists(path);
        return new File(path.toString());
    }

    /**
     * Adds a milestone timestamp for successfully completed operation
     *
     * @param properties properties file to write into
     */
    private void writeSuccessProperty(Properties properties) {
        long finishedTime = System.currentTimeMillis();
        String uuid = properties.getProperty(PropertiesKey.id.name());
        PropertiesOperation operation = PropertiesOperation.valueOf(properties.getProperty(PropertiesKey.operation.name()));
        if (operation.equals(PropertiesOperation.importing)) {
            fileOperationManager.addPropertyToPropertiesFile(uuid, "imported", Long.toString(finishedTime));
        }
    }

    /**
     * Changes "state"-value of properties file (in file and in operationLock)
     *
     * @param uuid  id of file
     * @param state current state of processing (see PropertiesState)
     */
    private void changeTaskState(String uuid, PropertiesState state) {
        fileOperationManager.addPropertyToPropertiesFile(uuid, PropertiesKey.state.name(), state.name());
        LOGGER.log(Level.INFO, "Execution of task {0} changed to state {1}", new Object[]{uuid, state.name()});
    }

    /**
     * Changes "operation"-value of properties file (in file and in operationLock)
     *
     * @param uuid      id of file
     * @param operation current processing operation (see PropertiesOperation)
     */
    private void changeOperationProperty(String uuid, PropertiesOperation operation) {
        fileOperationManager.addPropertyToPropertiesFile(uuid, PropertiesKey.operation.name(), operation.name());
        LOGGER.log(Level.INFO, "Operation of task {0} changed to {1}", new Object[]{uuid, operation.name()});
    }
}
