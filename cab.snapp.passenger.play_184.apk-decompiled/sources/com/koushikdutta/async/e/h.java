package com.koushikdutta.async.e;

import java.util.ArrayList;

public final class h<T> extends ArrayList<T> {

    /* renamed from: a  reason: collision with root package name */
    private Object f4524a;

    public final synchronized <V> V tag() {
        return this.f4524a;
    }

    public final synchronized <V> void tag(V v) {
        this.f4524a = v;
    }

    public final synchronized <V> void tagNull(V v) {
        if (this.f4524a == null) {
            this.f4524a = v;
        }
    }
}
