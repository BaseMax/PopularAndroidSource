package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import b.H.a.d.a.c;
import c.e.b.a.a.a;

public abstract class Worker extends ListenableWorker {

    /* renamed from: e  reason: collision with root package name */
    public c<ListenableWorker.a> f1012e;

    @SuppressLint({"BanKeepAnnotation"})
    @Keep
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public final a<ListenableWorker.a> i() {
        this.f1012e = c.e();
        b().execute(new o(this));
        return this.f1012e;
    }

    public abstract ListenableWorker.a k();
}
