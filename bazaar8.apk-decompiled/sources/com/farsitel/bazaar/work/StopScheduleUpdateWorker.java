package com.farsitel.bazaar.work;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.p.C0676a;
import com.farsitel.bazaar.app.download.DownloadService;
import h.f.b.j;

/* compiled from: StopScheduleUpdateWorker.kt */
public final class StopScheduleUpdateWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12490f;

    /* compiled from: StopScheduleUpdateWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StopScheduleUpdateWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        this.f12490f = context;
    }

    public ListenableWorker.a k() {
        Context context = this.f12490f;
        Intent intent = new Intent(context, DownloadService.class);
        intent.setAction("STOP_ALL");
        context.startService(intent);
        ListenableWorker.a c2 = ListenableWorker.a.c();
        j.a((Object) c2, "Result.success()");
        return c2;
    }
}
