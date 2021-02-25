package org.aktin.importer.enums;

/**
 * possible keys for properties file of uploaded files
 */
public enum PropertiesKey {
    /**
     * unique id
     */
    id,
    /**
     * original filename/displayed filename in frontend
     */
    filename,
    /**
     * file size in bytes
     */
    size,
    /**
     * id of selected processing script
     */
    script,
    /**
     * current file processing operation
     */
    operation,
    /**
     * current file processing state
     */
    state
}
