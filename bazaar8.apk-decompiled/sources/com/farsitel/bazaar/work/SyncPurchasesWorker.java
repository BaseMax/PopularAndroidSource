package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.m.d;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: SyncPurchasesWorker.kt */
public final class SyncPurchasesWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12494f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12495g;

    /* renamed from: h  reason: collision with root package name */
    public final d f12496h;

    /* compiled from: SyncPurchasesWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SyncPurchasesWorker(Context context, WorkerParameters workerParameters, d dVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(dVar, "paymentRepository");
        this.f12494f = context;
        this.f12495g = workerParameters;
        this.f12496h = dVar;
    }

    public ListenableWorker.a k() {
        if (l()) {
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        }
        ListenableWorker.a b2 = ListenableWorker.a.b();
        j.a((Object) b2, "Result.retry()");
        return b2;
    }

    public final boolean l() {
        return ((Boolean) C1101f.a(null, new SyncPurchasesWorker$syncPurchases$1(this, null), 1, null)).booleanValue();
    }
}
