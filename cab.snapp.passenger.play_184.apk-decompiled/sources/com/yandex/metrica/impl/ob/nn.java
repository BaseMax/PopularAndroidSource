package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.TimeUnit;

public class nn {

    /* renamed from: a  reason: collision with root package name */
    private volatile long f6457a;

    /* renamed from: b  reason: collision with root package name */
    private gf f6458b;
    private nq c;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        static nn f6459a = new nn((byte) 0);
    }

    /* synthetic */ nn(byte b2) {
        this();
    }

    public static nn a() {
        return a.f6459a;
    }

    private nn() {
    }

    public synchronized long b() {
        return this.f6457a;
    }

    public synchronized void a(Context context) {
        a(new gf(fq.a(context).c()), (nq) new np());
    }

    public synchronized void a(long j, Long l) {
        this.f6457a = (j - this.c.a()) / 1000;
        if (this.f6458b.b(true)) {
            boolean z = false;
            if (l != null) {
                long abs = Math.abs(j - this.c.a());
                gf gfVar = this.f6458b;
                if (abs > TimeUnit.SECONDS.toMillis(l.longValue())) {
                    z = true;
                }
                gfVar.c(z);
            } else {
                this.f6458b.c(false);
            }
        }
        this.f6458b.a(this.f6457a);
        this.f6458b.i();
    }

    public synchronized void c() {
        this.f6458b.c(false);
        this.f6458b.i();
    }

    public synchronized boolean d() {
        return this.f6458b.b(true);
    }

    public void a(gf gfVar, nq nqVar) {
        this.f6458b = gfVar;
        this.f6457a = this.f6458b.c(0);
        this.c = nqVar;
    }
}
