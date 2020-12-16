package org.aktin.scripts;

import org.aktin.Preferences;
import org.aktin.dwh.PreferenceKey;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.*;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@Singleton
public class PythonScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(PythonScriptExecutor.class.getName());

    private static final String SCRIPT_KEY = "MIMETYPE";
    private static final ThreadPoolExecutor executor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<>());

    @Inject
    private Preferences prefs;

    public boolean addTask(String path_file, String name_script, String method_script) throws IOException {
            if (doesContentTypeMatchScript(path_file, name_script)) {
                addTaskToQueue(path_file, name_script, method_script);
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
        String path_scripts = prefs.get(PreferenceKey.importScriptPath);
        File script = new File(path_scripts + "/" + name_script);

        String script_value = getScriptValueByKey(script, SCRIPT_KEY);
        switch (script_value) {
            case "application/zip":
                int[] header_bytes_array = new int[]{0x504B0304, 0x504B0506, 0x504B0708};
                return checkContentBytes(path_file, header_bytes_array);
            default:
                LOGGER.log(Level.SEVERE, "doesContentTypeMatchScript(): SCRIPT_KEY has no value");
                return false;  //TODO ODER LIEBER EXCEPTION?
        }
    }

    private String getScriptValueByKey(File script, String script_key) throws IOException{
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

        String path_scripts = prefs.get(PreferenceKey.importScriptPath);
        boolean result = false;

        String s = null;
        BufferedReader stdInput = null;
        BufferedReader stdError = null;
        try {
            Process p = Runtime.getRuntime().exec("python " + path_scripts + "/" + name_script + " " + path_file + " " + method_script);

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
