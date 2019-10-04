package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ev {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f5990a;

    /* renamed from: b  reason: collision with root package name */
    private final fh f5991b;
    private final ez c;
    private final nq d;

    public interface a {
        void a();
    }

    public ev(Context context, ScheduledExecutorService scheduledExecutorService, ez ezVar) {
        this(scheduledExecutorService, new fh(context), ezVar, new np());
    }

    public void a(long j, final a aVar) {
        this.f5990a.schedule(new Runnable() {
            public void run() {
                try {
                    a.this.a();
                } catch (Exception unused) {
                }
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public void a(long j) {
        this.c.a(j);
        this.f5991b.a(this.d.a());
    }

    public void a() {
        this.c.a();
    }

    public boolean b() {
        return this.d.a() - this.f5991b.b(0) > this.d.c();
    }

    ev(ScheduledExecutorService scheduledExecutorService, fh fhVar, ez ezVar, nq nqVar) {
        this.f5990a = scheduledExecutorService;
        this.f5991b = fhVar;
        this.c = ezVar;
        this.d = nqVar;
    }
}
