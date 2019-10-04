package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.d;
import c.c.a.e.d.r.a.d;
import c.c.a.p.C0676a;
import c.c.a.p.I;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.f;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: ReportCommentWorker.kt */
public final class ReportCommentWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12482f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12483g;

    /* renamed from: h  reason: collision with root package name */
    public final WorkerParameters f12484h;

    /* renamed from: i  reason: collision with root package name */
    public final d f12485i;

    /* renamed from: j  reason: collision with root package name */
    public final I f12486j;

    /* compiled from: ReportCommentWorker.kt */
    public static final class a {
        public a() {
        }

        public final b.H.d a(int i2, boolean z, EntityType entityType) {
            j.b(entityType, "entityType");
            d.a aVar = new d.a();
            aVar.a("reviewId", i2);
            aVar.a("isReply", z);
            aVar.a("entityType", entityType.ordinal());
            b.H.d a2 = aVar.a();
            j.a((Object) a2, "Data.Builder()\n         …\n                .build()");
            return a2;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: ReportCommentWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReportCommentWorker(Context context, WorkerParameters workerParameters, c.c.a.e.d.r.a.d dVar, I i2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(dVar, "repository");
        j.b(i2, "workManagerScheduler");
        this.f12483g = context;
        this.f12484h = workerParameters;
        this.f12485i = dVar;
        this.f12486j = i2;
    }

    public ListenableWorker.a k() {
        b.H.d d2 = d();
        j.a((Object) d2, "inputData");
        if (d2.a().containsKey("reviewId")) {
            if (!a(d().a("reviewId", -1), d().a("isReply", false), EntityType.values()[d().a("entityType", 0)])) {
                this.f12486j.h();
            }
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        }
        throw new IllegalStateException("use toInputData method to create this worker");
    }

    public final boolean a(int i2, boolean z, EntityType entityType) {
        j.b(entityType, "entityType");
        ReportCommentWorker$reportComment$1 reportCommentWorker$reportComment$1 = new ReportCommentWorker$reportComment$1(this, i2, z, entityType, null);
        return ((Boolean) C1101f.a(null, reportCommentWorker$reportComment$1, 1, null)).booleanValue();
    }
}
