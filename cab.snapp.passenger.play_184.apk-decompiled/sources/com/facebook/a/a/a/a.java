package com.facebook.a.a.a;

import com.facebook.crypto.b;
import com.facebook.crypto.e.c;

public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private static a f2418a;

    public static synchronized a get() {
        a aVar;
        synchronized (a.class) {
            if (f2418a == null) {
                f2418a = new a();
            }
            aVar = f2418a;
        }
        return aVar;
    }

    private a() {
        super(new c(), new b());
    }
}
