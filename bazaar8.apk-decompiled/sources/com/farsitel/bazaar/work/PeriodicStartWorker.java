package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.b;
import b.H.d;
import b.H.j;
import b.H.m;
import c.c.a.p.C0676a;
import h.f.b.f;
import h.f.b.j;
import java.util.concurrent.TimeUnit;
import kotlin.TypeCastException;

/* compiled from: PeriodicStartWorker.kt */
public final class PeriodicStartWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12467f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12468g;

    /* renamed from: h  reason: collision with root package name */
    public final WorkerParameters f12469h;

    /* compiled from: PeriodicStartWorker.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: PeriodicStartWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PeriodicStartWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        this.f12468g = context;
        this.f12469h = workerParameters;
    }

    public final b.H.b a(d dVar) {
        int a2 = dVar.a("networkConstraint", NetworkType.NOT_REQUIRED.ordinal());
        boolean a3 = dVar.a("requireCharging", false);
        boolean a4 = dVar.a("batteryNotLowConstraint", false);
        boolean a5 = dVar.a("storageNotLowConstraint", false);
        boolean a6 = dVar.a("deviceIdleConstraint", false);
        long a7 = dVar.a("triggerContentMaxDelay", -1);
        b.a aVar = new b.a();
        aVar.a(NetworkType.values()[a2]);
        aVar.b(a3);
        aVar.a(a4);
        aVar.d(a5);
        j.a((Object) aVar, "Constraints.Builder()\n  …NotLow(storageConstraint)");
        if (c.c.a.c.h.d.a(23)) {
            aVar.c(a6);
        }
        if (c.c.a.c.h.d.a(24)) {
            aVar.a(a7, TimeUnit.MINUTES);
        }
        b.H.b a8 = aVar.a();
        j.a((Object) a8, "constraintBuilder.build()");
        return a8;
    }

    public ListenableWorker.a k() {
        String a2 = d().a("className");
        long a3 = d().a("intervalInHour", 1);
        String[] b2 = d().b("tags");
        if (a2 != null) {
            Class<?> cls = Class.forName(a2);
            if (cls != null) {
                j.a aVar = new j.a(cls, a3, TimeUnit.HOURS);
                d d2 = d();
                h.f.b.j.a((Object) d2, "inputData");
                aVar.a(a(d2));
                if (b2 != null) {
                    for (String a4 : b2) {
                        aVar.a(a4);
                    }
                }
                m.a().a(aVar.a());
                ListenableWorker.a c2 = ListenableWorker.a.c();
                h.f.b.j.a((Object) c2, "Result.success()");
                return c2;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<out androidx.work.ListenableWorker>");
        }
        h.f.b.j.a();
        throw null;
    }
}
