package com.yandex.metrica.impl.ob;

public class ov<T> implements pa<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f6490a;

    public ov(String str) {
        this.f6490a = str;
    }

    public oy a(T t) {
        if (t != null) {
            return oy.a(this);
        }
        return oy.a(this, this.f6490a + " is null.");
    }
}
