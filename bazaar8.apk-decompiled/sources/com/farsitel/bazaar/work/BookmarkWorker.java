package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.d;
import c.c.a.p.C0676a;
import c.c.a.p.I;
import h.f.b.f;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: BookmarkWorker.kt */
public final class BookmarkWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12447f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12448g;

    /* renamed from: h  reason: collision with root package name */
    public final WorkerParameters f12449h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.d.b f12450i;

    /* renamed from: j  reason: collision with root package name */
    public final I f12451j;

    /* compiled from: BookmarkWorker.kt */
    public static final class a {
        public a() {
        }

        public final d a(String str, String str2, String str3, int i2, String str4, boolean z) {
            j.b(str, "packageName");
            j.b(str2, "appName");
            j.b(str3, "appIconURL");
            d.a aVar = new d.a();
            aVar.a("packageName", str);
            aVar.a("appName", str2);
            aVar.a("iconUrl", str3);
            aVar.a("price", i2);
            aVar.a("priceStirng", str4);
            aVar.a("bookmarked", z);
            d a2 = aVar.a();
            j.a((Object) a2, "Data.Builder()\n         …\n                .build()");
            return a2;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: BookmarkWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkWorker(Context context, WorkerParameters workerParameters, c.c.a.e.d.d.b bVar, I i2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(bVar, "bookmarkRepository");
        j.b(i2, "workManagerScheduler");
        this.f12448g = context;
        this.f12449h = workerParameters;
        this.f12450i = bVar;
        this.f12451j = i2;
    }

    public ListenableWorker.a k() {
        String a2 = d().a("packageName");
        String a3 = d().a("appName");
        String a4 = d().a("iconUrl");
        boolean a5 = d().a("bookmarked", true);
        int a6 = d().a("price", 0);
        String a7 = d().a("priceStirng");
        if (a2 == null) {
            throw new IllegalStateException("Required value was null.");
        } else if (a3 == null) {
            throw new IllegalStateException("Required value was null.");
        } else if (a4 != null) {
            BookmarkWorker$doWork$result$1 bookmarkWorker$doWork$result$1 = new BookmarkWorker$doWork$result$1(this, a5, a2, a3, a4, a6, a7, null);
            if (!((Boolean) C1101f.a(null, bookmarkWorker$doWork$result$1, 1, null)).booleanValue()) {
                this.f12451j.l();
            }
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        } else {
            throw new IllegalStateException("Required value was null.");
        }
    }
}
