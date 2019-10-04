package com.yandex.metrica.impl;

abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private final a f5836a;

    public interface a {
        boolean a(Throwable th);
    }

    /* access modifiers changed from: package-private */
    public abstract void b(Throwable th);

    j(a aVar) {
        this.f5836a = aVar;
    }

    /* access modifiers changed from: package-private */
    public void a(Throwable th) {
        if (this.f5836a.a(th)) {
            b(th);
        }
    }
}
