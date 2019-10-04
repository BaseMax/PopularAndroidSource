package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.i.c;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: LocationUpdatesWorker.kt */
public final class LocationUpdatesWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12457f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12458g;

    /* renamed from: h  reason: collision with root package name */
    public final c f12459h;

    /* compiled from: LocationUpdatesWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LocationUpdatesWorker(Context context, WorkerParameters workerParameters, c cVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(cVar, "placeRepository");
        this.f12457f = context;
        this.f12458g = workerParameters;
        this.f12459h = cVar;
    }

    public ListenableWorker.a k() {
        return l();
    }

    public final ListenableWorker.a l() {
        Object a2 = C1101f.a(null, new LocationUpdatesWorker$findUserLocation$1(this, null), 1, null);
        j.a(a2, "runBlocking {\n        Lo…failure()\n        }\n    }");
        return (ListenableWorker.a) a2;
    }
}
