package org.aktin.importer.pojos;

import org.aktin.importer.enums.ScriptOperation;

/**
 * POJO representation for a queued file processing task
 */
public class PythonScriptTask {

    private final String uuid;
    private final ScriptOperation method_script;

    public PythonScriptTask(String uuid, ScriptOperation method_script) {
        this.uuid = uuid;
        this.method_script = method_script;
    }

    public String getId() {
        return this.uuid;
    }

    public ScriptOperation getScriptMethod() {
        return this.method_script;
    }
}
