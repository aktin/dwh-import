package org.aktin.importer.pojos;

import org.aktin.importer.enums.LogType;

/**
 * POJO representation for logs created by python processing scripts
 */
public class ScriptLog {

    private final String id;
    private final LogType type;
    private final String text;

    public ScriptLog(String id, LogType type, String text) {
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
