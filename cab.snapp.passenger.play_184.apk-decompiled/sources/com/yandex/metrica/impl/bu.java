package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.ai;
import com.yandex.metrica.impl.ob.mg;
import java.io.Closeable;

public class bu<C extends ai> implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Object f5797a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final an f5798b;
    boolean c = false;
    private C d;
    private final mg e;

    /* access modifiers changed from: package-private */
    public void a() {
    }

    public bu(C c2, mg mgVar, an anVar) {
        this.d = c2;
        this.e = mgVar;
        this.f5798b = anVar;
    }

    public void close() {
        synchronized (this.f5797a) {
            if (!this.c) {
                a();
                this.c = true;
            }
        }
    }

    public void d() {
        synchronized (this.f5797a) {
            if (!this.c) {
                e();
                a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void e() {
        synchronized (this.f5797a) {
            if (!this.c) {
                c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.e.a(this.f5798b);
    }

    public C f() {
        return this.d;
    }
}
