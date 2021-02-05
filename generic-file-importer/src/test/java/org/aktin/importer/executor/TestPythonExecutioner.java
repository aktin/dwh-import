package org.aktin.importer.executor;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.concurrent.*;
import java.util.stream.Collectors;

import org.junit.Assert;
import org.junit.Test;


public class TestPythonExecutioner {

    public void runScripts() throws IOException {
        String s = null;
        String script_path = "C:\\Users\\User\\IdeaProjects\\dwh-import\\script-executioner\\src\\test\\resources\\leap_year.py";
        String year_to_test = "2152151";
        BufferedReader stdInput = null;
        BufferedReader stdError = null;

        try {
            Process p = new ProcessBuilder("python", script_path, year_to_test).start();
            stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
            stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

            while ((s = stdInput.readLine()) != null) {
                System.out.println(s);
            }
            while ((s = stdError.readLine()) != null) {
                System.out.println(s);
            }
            Assert.assertEquals(true, true);
        } catch (IOException e) {
            System.out.println("Exception happened");
            e.printStackTrace();
        } finally {
            stdInput.close();
            stdError.close();
        }
    }

    public void doesContentTypeMatchScript() throws IOException {
        String path_file = "C:\\Users\\User\\IdeaProjects\\dwh-import\\script-executioner\\src\\test\\resources\\p21testdata.zip";
        String path_scripts = "C:\\Users\\User\\IdeaProjects\\dwh-import\\script-executioner\\src\\test\\resources";
        String name_script = "leap_year.py";

        File script = new File(path_scripts + "\\" + name_script);

        try (BufferedReader br = new BufferedReader(new FileReader(script))) {
            String line, key, value = null;
            for (int i = 0; i < 15; i++) {
                line = br.readLine();
                if (line.startsWith("#") && line.contains("@") && line.contains("=")) {
                    key = line.substring(line.indexOf('@') + 1, line.indexOf('='));
                    if (key.equals("MIMETYPE"))
                        value = line.substring(line.indexOf('=') + 1);
                }
            }
            switch (value) {
                case "application/zip":
                    int[] header_bytes_array = {0x504B0304, 0x504B0506, 0x504B0708};
                    boolean b = checkContentBytes(path_file, header_bytes_array);

                default:
                    System.out.println("SOMETHING WRONG WITH MIME");
            }
        }
    }

    public boolean checkContentBytes(String path_file, int[] bytesArray) throws IOException {
        RandomAccessFile raf = new RandomAccessFile(path_file, "r");
        int fileSignature = raf.readInt();
        for (int bytes : bytesArray) {
            if (fileSignature == bytes)
                return true;
        }
        return false;
    }


    public void runInstance() throws ExecutionException, InterruptedException {

        ExecutorService executorService;
        ThreadPoolExecutor executor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<>());

        for (int t = 0; t < 1; t++) {
            FutureTask<Integer> future$t = new FutureTask<>(() -> {
                Integer a = 0;
                try {
                    for (int i = 0; i < 5; i++) {
                        a++;
                        Thread.sleep(1000);
                        // System.out.println(this.toString() + " " + Thread.currentThread().getName());
                    }
                } catch (InterruptedException e) {
                    System.out.println("Thread was interrupted");
                }
                return a;
            });
            executor.execute(future$t);
            System.out.println(future$t);
        }

        Integer result = null;
        try {
            for (int i = 0; i < 15; i++) {
                // System.out.println(executor.getQueue());
                System.out.println(executor.toString() + "\n");
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            System.out.println("Something happened");
        } catch (CancellationException e) {
            System.out.println("Is cancelled");
        }
        executor.shutdown();
        System.out.println(executor.toString() + "\n");
    }


    public void runPythonRunner() throws InterruptedException {
    //    PythonRunner runner = new PythonRunner();
      //  new Thread(runner).start();
     //   Thread.sleep(1000);
    }


    public void testExecute() throws InterruptedException, IOException {
        String path = "C:\\Users\\User\\IdeaProjects\\dwh-import\\script-executor\\src\\test\\resources\\";
        BufferedReader stdInput = null;
        BufferedReader stdError = null;
        try {
            Process process = new ProcessBuilder("python", path + "leap_year.py", "12312312").start();
            stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
            stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));
            String line;
            while ((line = stdInput.readLine()) != null) {
                Files.write(Paths.get(path + "output.txt"), line.getBytes(), StandardOpenOption.APPEND);
            }
            while ((line = stdError.readLine()) != null) {
                Files.write(Paths.get(path + "error.txt"), line.getBytes(), StandardOpenOption.APPEND);
            }
            if (!process.waitFor(2, TimeUnit.SECONDS)) {
                System.out.println("Already waited 2s");
                process.destroy();
                process.waitFor(10, TimeUnit.SECONDS);
                process.destroyForcibly();
                process.waitFor();
            } else {
                System.out.println("finished just in time");
            }
        } catch (IOException e) {
        } finally {
            if (stdInput != null) {
                try {
                    stdInput.close();
                } catch (IOException e) {
                }
            }
            if (stdError != null) {
                try {
                    stdError.close();
                } catch (IOException ignored) {
                }
            }

        }
    }

    @Test
    public void testExecute2() throws InterruptedException, IOException {
        String path = "C:\\Users\\User\\IdeaProjects\\dwh-import\\generic-file-importer\\src\\test\\resources\\";
        File error = new File(path + "error.txt");
        File output = new File(path + "output.txt");
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("python", path + "leap_year.py", "1234");
            processBuilder.redirectError(ProcessBuilder.Redirect.to(error));
            processBuilder.redirectOutput(ProcessBuilder.Redirect.to(output));
            Process process = processBuilder.start();

            if (!process.waitFor(10, TimeUnit.SECONDS)) {
                System.out.println("Already waited 2s");
                process.destroy();
                process.waitFor(10, TimeUnit.SECONDS);
                process.destroyForcibly();
                process.waitFor();
            } else {
                System.out.println("finished just in time");
            }
        } finally {
            Path p = Paths.get(path + "error.txt");

            System.out.println(Files.exists(p));

            List<String> a = Files.readAllLines(p);
            String result = a.stream()
                    .map(String::valueOf)
                    .collect(Collectors.joining("\n"));

            System.out.println(result);
        }

    }


}
