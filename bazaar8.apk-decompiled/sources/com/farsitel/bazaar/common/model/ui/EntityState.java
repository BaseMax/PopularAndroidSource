package com.farsitel.bazaar.common.model.ui;

/* compiled from: EntityState.kt */
public enum EntityState {
    UNDEFINED("undefined"),
    UPDATE_NEEDED("update_needed"),
    INSTALLED("installed"),
    FILE_EXISTS("file_exists"),
    NONE("none"),
    PREPARING("preparing"),
    INCOMPATIBLE("incompatible"),
    MALICIOUS_APP("malicious_app"),
    IN_QUEUE("in_queue"),
    DOWNLOADING("downloading"),
    CHECKING("checking"),
    COMPLETED("completed"),
    PAUSE("pause"),
    PAUSE_BY_SYSTEM("pause_by_system"),
    FAILED("failed"),
    FAILED_STORAGE("failed_storage");
    
    public final String value;

    /* access modifiers changed from: public */
    EntityState(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean inDownloadProcess() {
        return this == PREPARING || this == IN_QUEUE || this == DOWNLOADING || this == PAUSE_BY_SYSTEM;
    }

    public final boolean needToDownloadContinue() {
        return this == FAILED || this == FAILED_STORAGE || this == PAUSE_BY_SYSTEM || this == PAUSE || this == NONE;
    }
}
