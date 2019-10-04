package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class pk {

    /* renamed from: a  reason: collision with root package name */
    static final pk f3441a = new pk((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f3442b = false;
    private static final Class<?> c = a();
    private final Map<Object, Object> d;

    pk() {
        this.d = new HashMap();
    }

    private pk(byte b2) {
        this.d = Collections.emptyMap();
    }

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static pk zzcxb() {
        return pj.zzcwz();
    }
}
