package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.d;
import c.c.a.p.C0676a;
import h.f.b.f;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: ReportApplicationWorker.kt */
public final class ReportApplicationWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12479f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12480g;

    /* renamed from: h  reason: collision with root package name */
    public final c.c.a.e.d.p.a f12481h;

    /* compiled from: ReportApplicationWorker.kt */
    public static final class a {
        public a() {
        }

        public final d a(String str, String str2, String str3) {
            j.b(str, "packageName");
            j.b(str2, "selectedReason");
            d.a aVar = new d.a();
            aVar.a("packageName", str);
            aVar.a("selectedReason", str2);
            aVar.a("comment", str3);
            d a2 = aVar.a();
            j.a((Object) a2, "Data.Builder()\n         …\n                .build()");
            return a2;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: ReportApplicationWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReportApplicationWorker(Context context, WorkerParameters workerParameters, c.c.a.e.d.p.a aVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(aVar, "reportAppRepository");
        this.f12480g = context;
        this.f12481h = aVar;
    }

    public ListenableWorker.a k() {
        String a2 = d().a("packageName");
        String a3 = d().a("selectedReason");
        String a4 = d().a("comment");
        if (a2 == null || a3 == null) {
            ListenableWorker.a a5 = ListenableWorker.a.a();
            j.a((Object) a5, "Result.failure()");
            return a5;
        }
        ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1 reportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1 = new ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1(a2, a3, null, this, a4);
        Object a6 = C1101f.a(null, reportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1, 1, null);
        j.a(a6, "runBlocking {\n          …ult.retry()\n            }");
        return (ListenableWorker.a) a6;
    }
}
