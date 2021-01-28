package org.aktin.importer.enums;

// possible values for PropertyKey.state
public enum ImportState {
    queued,
    in_progress,
    successful,
    cancelled,
    failed,
    timeout
}
