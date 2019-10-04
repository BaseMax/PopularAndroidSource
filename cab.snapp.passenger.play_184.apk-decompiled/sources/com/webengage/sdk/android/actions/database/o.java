package com.webengage.sdk.android.actions.database;

public enum o {
    INCREMENT,
    FORCE_UPDATE,
    OPT_UPDATE;

    public final String toString() {
        return name().toLowerCase();
    }
}
