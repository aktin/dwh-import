package org.aktin.scripts;

import org.aktin.dwh.admin.importer.FileOperationManager;
import org.aktin.dwh.admin.importer.ScriptOperationManager;
import org.aktin.dwh.admin.importer.enums.ImportOperation;
import org.aktin.dwh.admin.importer.enums.ImportState;
import org.aktin.dwh.admin.importer.enums.LogType;
import org.aktin.dwh.admin.importer.enums.PropertyKey;
import org.aktin.dwh.admin.importer.pojos.PropertiesFilePOJO;

import javax.inject.Inject;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

// TODO COMMENTS + JAVADOC

public class PythonRunner implements Runnable {

    private static final Logger LOGGER = Logger.getLogger(PythonRunner.class.getName());

    @Inject
    private FileOperationManager fileOperationManager;

    @Inject
    private ScriptOperationManager scriptOperationManager;

    private final Queue<PythonScriptTask> queue;
    private String runningId;
    private Process process;
    private boolean exit = false;

    public PythonRunner() {
        queue = new LinkedList<>();
    }

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
            execute(task);
        }
        LOGGER.info("Processing thread ended");
    }

    public void submit(PythonScriptTask task) {
        synchronized (queue) {
            queue.add(task);
            changeTaskState(task.getId(), ImportState.queued);
            queue.notify();
        }
    }

    public void cancel(String uuid) {
        if (runningId.equals(uuid)) {
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
        changeTaskState(uuid, ImportState.cancelled);
    }

    public void terminate() {
        exit = true;
        if (process != null) {
            killProcess();
        }
        synchronized (queue) {
            queue.notify();
        }
    }

    private void killProcess() {
        try {
            process.destroy();
            process.waitFor(10, TimeUnit.SECONDS);
            process.destroyForcibly();
            process.waitFor();
        } catch (InterruptedException e) {
            LOGGER.log(Level.WARNING, "Killing thread was interrupted", e);
            Thread.currentThread().interrupt();
        }
    }


    // TODO output nur bei Erfolg??? Kein Stream
    // TODO what about clean up ??? if cancelled/interrupted
    private void execute(PythonScriptTask task) {
        String uuid = task.getId();
        PropertiesFilePOJO pojo_properties = fileOperationManager.getPropertiesPOJO(uuid);

        String name_script = pojo_properties.getScript();
        String path_script = scriptOperationManager.getScriptPath(name_script);
        String path_folder = fileOperationManager.getUploadFileFolderPath(uuid);
        String path_file = Paths.get(path_folder, pojo_properties.getFilename()).toString();

        File error = new File(Paths.get(path_folder, LogType.stdError.name()).toString());
        File output = new File(Paths.get(path_folder, LogType.stdOutput.name()).toString());
        try {
            runningId = uuid;
            changeTaskState(uuid, ImportState.in_progress);

            ProcessBuilder processBuilder = new ProcessBuilder("python", path_script, task.getScriptMethod().name(), path_file);
            processBuilder.redirectError(ProcessBuilder.Redirect.to(error));
            processBuilder.redirectOutput(ProcessBuilder.Redirect.to(output));
            process = processBuilder.start();

            if (!process.waitFor(4, TimeUnit.HOURS)) {
                changeTaskState(uuid, ImportState.timeout);
                killProcess();
            } else {
                changeTaskState(uuid, ImportState.successful);
                long finishedTime = System.currentTimeMillis();
                ImportOperation operation = ImportOperation.valueOf(pojo_properties.getOperation());
                if (operation.equals(ImportOperation.verifying))
                    fileOperationManager.addPropertyToProperties(uuid, PropertyKey.verified, Long.toString(finishedTime));
                else if (operation.equals(ImportOperation.importing))
                    fileOperationManager.addPropertyToProperties(uuid, PropertyKey.imported, Long.toString(finishedTime));
            }
        } catch (IOException | InterruptedException e) {
            LOGGER.log(Level.SEVERE, "Execution of task failed", e);
            changeTaskState(uuid, ImportState.failed);
        } finally {
            runningId = null;
            process = null;
            fileOperationManager.reloadScriptLogList(uuid);
        }

    }

    private void changeTaskState(String uuid, ImportState state) {
        fileOperationManager.addPropertyToProperties(uuid, PropertyKey.state, state.name());
        LOGGER.log(Level.INFO, "Execution of task {0} changed to state {1}", new Object[]{uuid, state.name()});
    }
}
