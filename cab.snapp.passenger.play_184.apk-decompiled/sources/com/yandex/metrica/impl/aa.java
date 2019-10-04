package com.yandex.metrica.impl;

import android.os.Handler;
import android.os.SystemClock;
import com.yandex.metrica.impl.ob.nt;

class aa {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f5659a;

    /* renamed from: b  reason: collision with root package name */
    private final c f5660b;
    private final ab c;

    aa(Handler handler, c cVar) {
        this.f5659a = handler;
        this.f5660b = cVar;
        this.c = new ab(handler, cVar);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        b(this.f5659a, this.f5660b, this.c);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        a(this.f5659a, this.f5660b, this.c);
    }

    static void a(Handler handler, c cVar, Runnable runnable) {
        b(handler, cVar, runnable);
        handler.postAtTime(runnable, a(cVar), SystemClock.uptimeMillis() + ((long) (nt.a(cVar.d().b().d(), 10) * 500)));
    }

    private static void b(Handler handler, c cVar, Runnable runnable) {
        handler.removeCallbacks(runnable, a(cVar));
    }

    private static String a(c cVar) {
        return cVar.d().b().f();
    }
}
