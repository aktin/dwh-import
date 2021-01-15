package org.aktin.scripts;

import org.aktin.dwh.admin.importer.FileOperationManager;
import org.aktin.dwh.admin.importer.enums.ImportState;
import org.aktin.dwh.admin.importer.enums.PropertyKey;

import javax.inject.Inject;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
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
            process.destroy();
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
            process.destroy();
        }
        synchronized (queue) {
            queue.notify();
        }
    }


    //TODO get std output and write to file
    //TODO Timeout
    //TODO clean up output file if cancelled/interrupted
    // Pythonprozess kann endloss sein
    // Worker/Execution Warteschlange mit Timeout
    private void execute(PythonScriptTask task) {
        BufferedReader stdInput = null;
        BufferedReader stdError = null;
        try {
            runningId = task.getId();
            changeTaskState(task.getId(), ImportState.in_progress, Level.INFO);

            HashMap<String, String> map_properties = fileOperationManager.checkPropertiesFileForIntegrity(task.getId());
            String name_script = map_properties.get(PropertyKey.script.name());
            String path_script = fileOperationManager.getScriptPath(name_script);
            String path_file = fileOperationManager.getFilePath(task.getId());

            process = new ProcessBuilder("python", path_script, task.getScriptMethod().name(), path_file).start();
            stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
            stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));

            String line;
            while ((line = stdInput.readLine()) != null) {
                System.out.println(line);
                //TODO
                // kein XML
                // properties datei zeilenweise
                // stdin zusammenfassungen / Ergebnis
                // stderror warnung, error / alle Logs
            }
            while ((line = stdError.readLine()) != null) {
                System.out.println(line);
                //TODO
                // kein XML
                // properties datei zeilenweise
                // stdin zusammenfassungen / Ergebnis
                // stderror warnung, error / alle Logs
            }
            changeTaskState(task.getId(), ImportState.successful, Level.INFO);
        } catch (IOException e) {
            changeTaskState(task.getId(), ImportState.failed, Level.SEVERE);
        } finally {
            runningId = null;
            process = null;
            if (stdInput != null) {
                try {
                    stdInput.close();
                } catch (IOException e) {
                    LOGGER.log(Level.WARNING, "Closing of inputReader failed", e);
                }
            }
            if (stdError != null) {
                try {
                    stdError.close();
                } catch (IOException e) {
                    LOGGER.log(Level.WARNING, "Closing of errorReader failed", e);
                }
            }

        }
    }

    private void changeTaskState(String uuid, ImportState state, Level level) {
        fileOperationManager.writePropertyToFile(uuid, PropertyKey.state, state.name());
        LOGGER.log(level, "Execution of task {0} changed to state {1}", new Object[]{uuid, state.name()});
    }
}
