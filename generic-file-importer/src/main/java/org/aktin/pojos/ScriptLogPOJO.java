package org.aktin.pojos;

import org.aktin.enums.LogType;

public class ScriptLogPOJO {

    private String id;
    private LogType type;
    private String text;

    public ScriptLogPOJO(String id, LogType type, String text) {
        this.id = id;
        this.type = type;
        this.text = text;
    }

    public String getId() {
        return id;
    }

    public LogType getType() {
        return type;
    }

    public String getText() {
        return text;
    }
}
