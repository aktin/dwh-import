package org.aktin.importer.executor;

import org.aktin.importer.enums.ScriptOperation;

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
