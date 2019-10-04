package com.farsitel.bazaar.work.periodicdelay;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.b.E;
import c.c.a.p.C0676a;
import c.c.a.p.I;
import h.f.b.j;
import i.a.C1101f;
import java.util.Calendar;

/* compiled from: StartScheduleUpdateWorker.kt */
public final class StartScheduleUpdateWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12501f;

    /* renamed from: g  reason: collision with root package name */
    public final E f12502g;

    /* renamed from: h  reason: collision with root package name */
    public final I f12503h;

    /* compiled from: StartScheduleUpdateWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StartScheduleUpdateWorker(Context context, WorkerParameters workerParameters, E e2, I i2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(e2, "repository");
        j.b(i2, "workManagerScheduler");
        this.f12501f = context;
        this.f12502g = e2;
        this.f12503h = i2;
    }

    public ListenableWorker.a k() {
        c.c.a.e.d.u.a a2 = c.c.a.d.a.a.f4744b.a(this.f12501f);
        Calendar q = a2.q();
        Calendar r = a2.r();
        if (!(r == null || q == null)) {
            if (q.get(11) < r.get(11)) {
                q.add(6, 1);
            }
            long timeInMillis = q.getTimeInMillis();
            Calendar instance = Calendar.getInstance();
            j.a((Object) instance, "Calendar.getInstance()");
            if (timeInMillis > instance.getTimeInMillis()) {
                l();
                this.f12503h.a(Math.max(0, q.getTimeInMillis() - System.currentTimeMillis()));
            }
        }
        ListenableWorker.a c2 = ListenableWorker.a.c();
        j.a((Object) c2, "Result.success()");
        return c2;
    }

    public final ComponentName l() {
        return (ComponentName) C1101f.a(null, new StartScheduleUpdateWorker$updateApplication$1(this, null), 1, null);
    }
}
