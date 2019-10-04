package com.raizlabs.android.dbflow.annotation;

public enum ForeignKeyAction {
    NO_ACTION,
    RESTRICT,
    SET_NULL,
    SET_DEFAULT,
    CASCADE
}
