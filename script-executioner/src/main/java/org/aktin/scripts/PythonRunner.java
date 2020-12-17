package org.aktin.scripts;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

// TODO COMMENTS + JAVADOC

public class PythonRunner implements Runnable {

    private Queue<String> queue;
    private String runningString;
    private boolean exit = false;

    public PythonRunner() {
        queue = new LinkedList<String>();
    }

    public void submit(String s) {
        synchronized (queue) {
            queue.add(s);
            queue.notify();
        }
    }

    @Override
    public void run() {
        while (!exit) {
            String out;
            synchronized (queue) {
                if (queue.isEmpty()) {
                    try {
                        queue.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                if (!queue.isEmpty())
                    out = queue.remove();
                else
                    continue;
            }

            execute(out);
        }
    }

    public void terminate() {
        // TODO während der wartet
        // TODO während er ausführt

        exit = true;

        // Warteschlange wird unterbrochen
        synchronized (queue) {
            queue.notify();
        }
    }

    public void cancel(String s) {
        if (runningString.equals(s)) {
            // KILL PROCESS
        } else {
            synchronized (queue) {
                if (queue.contains(s))
                    queue.remove(s);
            }
        }
    }

    private void execute(String s) {

        // READ properties

        runningString = s;
        /*
         * TODO Zustand auf running setzen ( check 'method')
         * TODO Am Ende : successful oder failed
         */
        try {
            System.out.println(s);

            Thread.sleep(1000);

        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            runningString = null;
        }
    }
}
