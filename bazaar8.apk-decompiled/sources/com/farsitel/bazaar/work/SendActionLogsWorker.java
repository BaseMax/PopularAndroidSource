package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: SendActionLogsWorker.kt */
public final class SendActionLogsWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12487f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12488g;

    /* renamed from: h  reason: collision with root package name */
    public final c.c.a.a.b.a.a.a f12489h;

    /* compiled from: SendActionLogsWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SendActionLogsWorker(Context context, WorkerParameters workerParameters, c.c.a.a.b.a.a.a aVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(aVar, "actionLogRepository");
        this.f12487f = context;
        this.f12488g = workerParameters;
        this.f12489h = aVar;
    }

    public ListenableWorker.a k() {
        return l();
    }

    public final ListenableWorker.a l() {
        Object a2 = C1101f.a(null, new SendActionLogsWorker$sendSavedActions$1(this, null), 1, null);
        j.a(a2, "runBlocking {\n        tr…t.retry()\n        }\n    }");
        return (ListenableWorker.a) a2;
    }
}
