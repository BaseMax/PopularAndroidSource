package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.r.a.b;
import c.c.a.p.C0676a;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: PendingCommentWorker.kt */
public final class PendingCommentWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12463f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12464g;

    /* renamed from: h  reason: collision with root package name */
    public final b f12465h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.r.b.b f12466i;

    /* compiled from: PendingCommentWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PendingCommentWorker(Context context, WorkerParameters workerParameters, b bVar, c.c.a.e.d.r.b.b bVar2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(bVar, "commentActionRepository");
        j.b(bVar2, "postCommentRepository");
        this.f12463f = context;
        this.f12464g = workerParameters;
        this.f12465h = bVar;
        this.f12466i = bVar2;
    }

    public final /* synthetic */ Object a(h.c.b<? super Boolean> bVar) {
        return this.f12465h.a(bVar);
    }

    public final /* synthetic */ Object b(h.c.b<? super Boolean> bVar) {
        return this.f12466i.a(bVar);
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
        return ((Boolean) C1101f.a(null, new PendingCommentWorker$sendPendingComment$1(this, null), 1, null)).booleanValue();
    }
}
