package com.raizlabs.android.dbflow.structure;

public final class d extends RuntimeException {
    public d() {
        super("No Databases were found. Did you create a Database Annotation placeholder class?");
    }

    public d(String str) {
        super(str);
    }
}
