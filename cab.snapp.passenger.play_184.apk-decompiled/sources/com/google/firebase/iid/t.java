package com.google.firebase.iid;

public final class t extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final int f4085a;

    public t(int i, String str) {
        super(str);
        this.f4085a = i;
    }

    public final int getErrorCode() {
        return this.f4085a;
    }
}
