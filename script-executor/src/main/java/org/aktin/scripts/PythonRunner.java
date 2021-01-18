package org.aktin.scripts;

import org.aktin.dwh.admin.importer.FileOperationManager;
import org.aktin.dwh.admin.importer.enums.ImportState;
import org.aktin.dwh.admin.importer.enums.PropertyKey;

import javax.inject.Inject;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.HashMap;
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

    private Queue<PythonScriptTask> queue;
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
            changeTaskState(task.getId(), ImportState.queued, Level.INFO);
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
        changeTaskState(uuid, ImportState.cancelled, Level.INFO);
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


    // write nur wenn abgeschlossen 
    //TODO what about clean up ??? if cancelled/interrupted
    private void execute(PythonScriptTask task) {
        HashMap<String, String> map_properties = fileOperationManager.checkPropertiesFileForIntegrity(task.getId());
        if (map_properties != null && !map_properties.isEmpty()) {
            String name_script = map_properties.get(PropertyKey.script.name());
            String path_script = fileOperationManager.getScriptPath(name_script);
            String path_folder = fileOperationManager.getFileFolder(task.getId());
            String path_file = Paths.get(path_folder, map_properties.get(PropertyKey.filename.name())).toString();

            long currentTime = System.currentTimeMillis();
            File error = new File(new StringBuilder(path_folder).append(currentTime).append("_error").toString());
            File output = new File(new StringBuilder(path_folder).append(currentTime).append("_output").toString());
            try {
                runningId = task.getId();
                changeTaskState(task.getId(), ImportState.in_progress, Level.INFO);

                ProcessBuilder processBuilder = new ProcessBuilder("python", path_script, task.getScriptMethod().name(), path_file);
                processBuilder.redirectError(ProcessBuilder.Redirect.appendTo(error));
                processBuilder.redirectOutput(ProcessBuilder.Redirect.appendTo(output));
                process = processBuilder.start();

                if (!process.waitFor(4, TimeUnit.HOURS)) {
                    changeTaskState(task.getId(), ImportState.timeout, Level.SEVERE);
                    killProcess();
                } else
                    changeTaskState(task.getId(), ImportState.successful, Level.INFO);
            } catch (IOException | InterruptedException e) {
                changeTaskState(task.getId(), ImportState.failed, Level.SEVERE);
            } finally {
                runningId = null;
                process = null;
            }
        }
    }

    private void changeTaskState(String uuid, ImportState state, Level level) {
        fileOperationManager.writePropertyToFile(uuid, PropertyKey.state, state.name());
        LOGGER.log(level, "Execution of task {0} changed to state {1}", new Object[]{uuid, state.name()});
    }
}
