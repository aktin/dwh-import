package org.aktin.importer.pojos;

/**
 * POJO representation for a queued file processing task
 */
public class PythonScriptTask {

    private final String uuid;

    public PythonScriptTask(String uuid) {
        this.uuid = uuid;
    }

    public String getId() {
        return this.uuid;
    }
}
