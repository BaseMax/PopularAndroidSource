package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.b.f.a.d;
import c.c.a.e.d.b.ba;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: UpgradableAppsWorker.kt */
public final class UpgradableAppsWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12497f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12498g;

    /* renamed from: h  reason: collision with root package name */
    public final ba f12499h;

    /* renamed from: i  reason: collision with root package name */
    public final d f12500i;

    /* compiled from: UpgradableAppsWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsWorker(Context context, WorkerParameters workerParameters, ba baVar, d dVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(baVar, "upgradableAppRepository");
        j.b(dVar, "upgradableAppsNotification");
        this.f12497f = context;
        this.f12498g = workerParameters;
        this.f12499h = baVar;
        this.f12500i = dVar;
    }

    public ListenableWorker.a k() {
        return l();
    }

    public final ListenableWorker.a l() {
        Object a2 = C1101f.a(null, new UpgradableAppsWorker$getUpgradableApps$1(this, null), 1, null);
        j.a(a2, "runBlocking {\n        tr…failure()\n        }\n    }");
        return (ListenableWorker.a) a2;
    }
}
