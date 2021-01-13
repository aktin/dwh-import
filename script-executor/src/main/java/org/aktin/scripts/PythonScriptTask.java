package org.aktin.scripts;

public class PythonScriptTask {

    private String uuid;
    private ScriptMethod method_script;

    public PythonScriptTask(String uuid, ScriptMethod method_script) {
        this.uuid = uuid;
        this.method_script = method_script;
    }

    public String getId() {
        return this.uuid;
    }

    public ScriptMethod getScriptMethod() {
        return this.method_script;
    }
}
