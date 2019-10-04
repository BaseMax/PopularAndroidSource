package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.j;
import java.lang.Thread;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class al implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<j> f5708a = new CopyOnWriteArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f5709b;

    public al(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f5709b = uncaughtExceptionHandler;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        try {
            h.a().b((j) new ax());
            Iterator<j> it = this.f5708a.iterator();
            while (it.hasNext()) {
                it.next().a(th);
            }
        } finally {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5709b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }

    public void a(j jVar) {
        this.f5708a.add(jVar);
    }

    public void b(j jVar) {
        this.f5708a.remove(jVar);
    }
}
