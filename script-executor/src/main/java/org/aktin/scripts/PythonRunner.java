package org.aktin.scripts;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;
import org.aktin.dwh.admin.importer.ImportState;
import org.aktin.dwh.admin.importer.ImportStateManager;
import org.aktin.dwh.admin.importer.PropertyKey;

import javax.inject.Inject;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.Queue;
import java.util.logging.Level;
import java.util.logging.Logger;

// TODO COMMENTS + JAVADOC

public class PythonRunner implements Runnable {

    private static final Logger LOGGER = Logger.getLogger(PythonRunner.class.getName());

    @Inject
    private ImportStateManager importStateManager;

    @Inject
    private Preferences prefs;

    private Queue<PythonScriptTask> queue;
    private String runningId;
    private boolean exit = false;


    public PythonRunner() {
        queue = new LinkedList<>();
    }

    public void submit(PythonScriptTask task) {
        synchronized (queue) {
            queue.add(task);
            queue.notify();
        }
    }

    @Override
    public void run() {
        while (!exit) {
            PythonScriptTask task;
            synchronized (queue) {
                if (queue.isEmpty()) {
                    try {
                        queue.wait();
                    } catch (InterruptedException e) {
                        LOGGER.log(Level.WARNING, "Thread was interrupted!", e);
                        Thread.currentThread().interrupt();
                    }
                }
                if (queue.isEmpty())
                    continue;
                else
                    task = queue.remove();
            }
            execute(task);
        }
    }

    public void cancel(String uuid) {
        if (runningId.equals(uuid)) {
            // Thread.currentThread().interrupt(); ???
            runningId = null;
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
    }

    public void terminate() {
        exit = true;
        if (runningId != null) {
            cancel(runningId);
        } else {
            synchronized (queue) {
                queue.notify();
            }
        }
    }


    //TODO FIND A BETTER WAY FOR FINALLY
    //TODO Timeout
    // Pythonprozess kann endloss sein
    // Worker/Execution Warteschlange mit Timeout
    private void execute(PythonScriptTask task) {
        runningId = task.getId();

        String name_script = importStateManager.getPropertyByKey(task.getId(), PropertyKey.script);
        String path_script = Paths.get(prefs.get(PreferenceKey.importScriptPath), name_script).toString();
        String path_file = importStateManager.getPropertyByKey(task.getId(), PropertyKey.path);


        String line;
        BufferedReader stdInput = null;
        BufferedReader stdError = null;
        try {
            setPropertyToTaskDoing(task.getId(), task.getScriptMethod());
            Process p = new ProcessBuilder("python", path_script, task.getScriptMethod().name(), path_file).start();
            stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

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
            }

            setPropertyToTaskDone(task.getId(), task.getScriptMethod());
        } catch (Exception e) {
            setPropertyToTaskFailed(task.getId(), task.getScriptMethod(), e);
        } finally {
            try {
                runningId = null;
                if (stdInput != null) stdInput.close();
                if (stdError != null) stdError.close();
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "An Exception was thrown", e);
            }
        }
    }

    //TODO cancelled und queued hier auch aufnehmen?
    private void setPropertyToTaskDoing(String uuid, ScriptMethod method) {
        switch (method) {
            case verify_file:
                importStateManager.changeStateProperty(uuid, ImportState.verifying);
                LOGGER.log(Level.INFO, "Started file verification of {0}", uuid);
                break;
            case import_file:
                importStateManager.changeStateProperty(uuid, ImportState.importing);
                LOGGER.log(Level.INFO, "Started file import of {0}", uuid);
                break;
        }
    }

    private void setPropertyToTaskDone(String uuid, ScriptMethod method) {
        switch (method) {
            case verify_file:
                importStateManager.writePropertyToFile(uuid, PropertyKey.verified, String.valueOf(System.currentTimeMillis()));
                importStateManager.changeStateProperty(uuid, ImportState.verification_successful);
                LOGGER.log(Level.INFO, "Verified file of {0}", uuid);
                break;
            case import_file:
                importStateManager.writePropertyToFile(uuid, PropertyKey.imported, String.valueOf(System.currentTimeMillis()));
                importStateManager.changeStateProperty(uuid, ImportState.import_successful);
                LOGGER.log(Level.INFO, "Imported file of {0}", uuid);
                break;
        }
    }

    private void setPropertyToTaskFailed(String uuid, ScriptMethod method, Exception e) {
        switch (method) {
            case verify_file:
                importStateManager.changeStateProperty(uuid, ImportState.verification_failed);
                break;
            case import_file:
                importStateManager.changeStateProperty(uuid, ImportState.import_failed);
                break;
        }
        LOGGER.log(Level.SEVERE, "An Exception was thrown", e);
    }
}
