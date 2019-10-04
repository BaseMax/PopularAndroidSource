package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.d.b;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: SyncBookmarkWorker.kt */
public final class SyncBookmarkWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12491f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12492g;

    /* renamed from: h  reason: collision with root package name */
    public final b f12493h;

    /* compiled from: SyncBookmarkWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SyncBookmarkWorker(Context context, WorkerParameters workerParameters, b bVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(bVar, "bookmarkRepository");
        this.f12491f = context;
        this.f12492g = workerParameters;
        this.f12493h = bVar;
    }

    public ListenableWorker.a k() {
        Object a2 = C1101f.a(null, new SyncBookmarkWorker$doWork$1(this, null), 1, null);
        j.a(a2, "runBlocking {\n        bo…   Result.success()\n    }");
        return (ListenableWorker.a) a2;
    }
}
