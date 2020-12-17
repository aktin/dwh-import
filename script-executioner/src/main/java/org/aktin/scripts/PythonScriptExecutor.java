package org.aktin.scripts;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.enterprise.concurrent.ManagedExecutorService;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.*;
import java.nio.file.Paths;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.logging.Level;
import java.util.logging.Logger;

// TODO COMMENTS + JAVADOC

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());
    private static final LinkedBlockingQueue QUEUE = new LinkedBlockingQueue();
    private static final String SCRIPT_KEY = "MIMETYPE";

    private PythonRunner runner;

    @Inject
    private Preferences prefs;

    @PostConstruct
    public void startup() {
        runner = new PythonRunner();

        // TODO init queue

        new Thread(runner).start();
    }

    @PreDestroy
    public void shutdown() {
        runner.terminate();
    }

    public boolean addTask(String path_file, String name_script, String method_script) throws IOException {
            if (doesContentTypeMatchScript(path_file, name_script)) {
                runner.submit(name_script);
                return true;
            } else
                return false;
    }

    public void cancelTask(FutureTask task) {
        if (executor.getQueue().contains(task))
            executor.getQueue().remove(task);
        else
            task.cancel(true);
    }

    public boolean isTaskDone(FutureTask task) {
        return task.isDone();
    }

    private boolean doesContentTypeMatchScript(String path_file, String name_script) throws IOException {
        File script = new File(Paths.get(prefs.get(PreferenceKey.importScriptPath), name_script).toString());

        String script_value = getScriptValueByKey(script, SCRIPT_KEY);
        switch (script_value) {
            case "application/zip":
                int[] header_bytes_array = new int[]{0x504B0304, 0x504B0506, 0x504B0708};
                return checkContentBytes(path_file, header_bytes_array);
            default:
                LOGGER.log(Level.SEVERE, "Appropriate script_value could not be found");
                return false;  //TODO ODER LIEBER EXCEPTION?
        }
    }

    private String getScriptValueByKey(File script, String script_key) throws IOException {
        String line, key, value = null;
        try (BufferedReader br = new BufferedReader(new FileReader(script))) {
            for (int i = 0; i < 15; i++) {
                line = br.readLine();
                if (line.startsWith("#") && line.contains("@") && line.contains("=")) {
                    key = line.substring(line.indexOf('@') + 1, line.indexOf('='));
                    if (key.equals(script_key))
                        value = line.substring(line.indexOf('=') + 1);
                }
            }
        }
        return value;
    }

    private boolean checkContentBytes(String path_file, int[] bytesArray) throws IOException {
        RandomAccessFile raf = new RandomAccessFile(path_file, "r");
        int fileSignature = raf.readInt();
        for (int bytes : bytesArray) {
            if (fileSignature == bytes)
                return true;
        }
        return false;
    }


    private void addTaskToQueue(String path_file, String name_script, String method_script) throws IOException {


        //TODO VERPACKEN FutureTask<Void> future = new FutureTask<Void(() -> { return null; }

        String path_script = Paths.get(prefs.get(PreferenceKey.importScriptPath), name_script).toString();

        boolean result = false;

        String s = null;
        BufferedReader stdInput = null;
        BufferedReader stdError = null;
        try {
            Process p =  new ProcessBuilder("python", path_script, path_file, method_script).start();

            stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

            while ((s = stdInput.readLine()) != null) {
                System.out.println(s);
                //XML
            }

            while ((s = stdError.readLine()) != null) {
                System.out.println(s);
                //XML
            }

            result = true;
        } catch (IOException e) {
            System.out.println("Exception happened");
            e.printStackTrace();
            result = false;
        } finally {
            stdInput.close();
            stdError.close();
        }
    }

}
