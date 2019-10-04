package com.webengage.sdk.android;

import java.io.Serializable;

public class ac implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5332a = null;

    /* renamed from: b  reason: collision with root package name */
    private Object f5333b = null;

    private ac() {
    }

    public ac(String str, Object obj) {
        this.f5332a = str;
        this.f5333b = obj;
    }

    public String a() {
        return this.f5332a;
    }

    public Object b() {
        return this.f5333b;
    }

    public boolean equals(Object obj) {
        return false;
    }

    public int hashCode() {
        if (this.f5332a == null || this.f5333b == null) {
            return super.hashCode();
        }
        return (this.f5332a + this.f5333b).hashCode();
    }
}
