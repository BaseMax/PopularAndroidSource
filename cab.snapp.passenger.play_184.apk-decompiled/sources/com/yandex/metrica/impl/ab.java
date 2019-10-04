package com.yandex.metrica.impl;

import android.os.Handler;
import java.lang.ref.WeakReference;

class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Handler> f5661a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<c> f5662b;

    ab(Handler handler, c cVar) {
        this.f5661a = new WeakReference<>(handler);
        this.f5662b = new WeakReference<>(cVar);
    }

    public void run() {
        Handler handler = (Handler) this.f5661a.get();
        c cVar = (c) this.f5662b.get();
        if (handler != null && cVar != null && cVar.c()) {
            aa.a(handler, cVar, this);
        }
    }
}
