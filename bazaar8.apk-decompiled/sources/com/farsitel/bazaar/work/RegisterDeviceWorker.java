package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: RegisterDeviceWorker.kt */
public final class RegisterDeviceWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12475f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12476g;

    /* renamed from: h  reason: collision with root package name */
    public final c.c.a.e.d.a.a f12477h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.u.a f12478i;

    /* compiled from: RegisterDeviceWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterDeviceWorker(Context context, WorkerParameters workerParameters, c.c.a.e.d.a.a aVar, c.c.a.e.d.u.a aVar2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(aVar, "accountRepository");
        j.b(aVar2, "settingsRepository");
        this.f12475f = context;
        this.f12476g = workerParameters;
        this.f12477h = aVar;
        this.f12478i = aVar2;
    }

    public ListenableWorker.a k() {
        return l();
    }

    public final ListenableWorker.a l() {
        Object a2 = C1101f.a(null, new RegisterDeviceWorker$registerDevice$1(this, null), 1, null);
        j.a(a2, "runBlocking {\n        tr…failure()\n        }\n    }");
        return (ListenableWorker.a) a2;
    }
}
