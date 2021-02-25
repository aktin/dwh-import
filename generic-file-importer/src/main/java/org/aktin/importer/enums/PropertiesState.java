package org.aktin.importer.enums;

/**
 * possible values for PropertiesKey.state
 */
public enum PropertiesState {
    /**
     * current operation is queued
     */
    queued,
    /**
     * current operation is processing
     */
    in_progress,
    /**
     * current operation is finished and successful
     */
    successful,
    /**
     * current operation got cancelled during processing
     */
    cancelled,
    /**
     * current operation failed while processing
     */
    failed,
    /**
     * current operation got cancelled due to timeout
     */
    timeout
}
