package org.aktin.importer.pojos;

/**
 * POJO representation for file processing scripts
 */
public class ScriptFile {

    private String id;
    private String viewname;
    private String version;
    private String mimetype;
    private String path;

    public ScriptFile(String id, String viewname, String version, String mimetype, String path) {
        this.id = id;
        this.viewname = viewname;
        this.version = version;
        this.mimetype = mimetype;
        this.path = path;
    }

    public String getId() {
        return id;
    }

    public String getViewname() {
        return viewname;
    }

    public String getVersion() {
        return version;
    }

    public String getMimetype() {
        return mimetype;
    }

    public String getPath() {
        return path;
    }
}
