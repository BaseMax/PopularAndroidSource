package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.d;
import c.c.a.e.d.r.a.f;
import c.c.a.p.C0676a;
import c.c.a.p.I;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: CommentActionWorker.kt */
public final class CommentActionWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12452f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12453g;

    /* renamed from: h  reason: collision with root package name */
    public final WorkerParameters f12454h;

    /* renamed from: i  reason: collision with root package name */
    public final f f12455i;

    /* renamed from: j  reason: collision with root package name */
    public final I f12456j;

    /* compiled from: CommentActionWorker.kt */
    public static final class a {
        public a() {
        }

        public final d a(int i2, boolean z, boolean z2) {
            d.a aVar = new d.a();
            aVar.a("reviewId", i2);
            aVar.a("upVote", z);
            aVar.a("isReply", z2);
            d a2 = aVar.a();
            j.a((Object) a2, "Data.Builder()\n         …\n                .build()");
            return a2;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    /* compiled from: CommentActionWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CommentActionWorker(Context context, WorkerParameters workerParameters, f fVar, I i2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(fVar, "voteCommentRepository");
        j.b(i2, "workManagerScheduler");
        this.f12453g = context;
        this.f12454h = workerParameters;
        this.f12455i = fVar;
        this.f12456j = i2;
    }

    public ListenableWorker.a k() {
        d d2 = d();
        j.a((Object) d2, "inputData");
        if (d2.a().containsKey("reviewId")) {
            if (!a(d().a("reviewId", -1), d().a("upVote", false), d().a("isReply", false))) {
                this.f12456j.h();
            }
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        }
        throw new IllegalStateException("use toInputData method to create this worker");
    }

    public final boolean a(int i2, boolean z, boolean z2) {
        CommentActionWorker$sendCommentAction$1 commentActionWorker$sendCommentAction$1 = new CommentActionWorker$sendCommentAction$1(this, z, i2, z2, null);
        return ((Boolean) C1101f.a(null, commentActionWorker$sendCommentAction$1, 1, null)).booleanValue();
    }
}
