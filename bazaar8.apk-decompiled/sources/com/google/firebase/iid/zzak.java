package com.google.firebase.iid;

public final class zzak extends Exception {
    public final int errorCode;

    public zzak(int i2, String str) {
        super(str);
        this.errorCode = i2;
    }

    public final int a() {
        return this.errorCode;
    }
}
