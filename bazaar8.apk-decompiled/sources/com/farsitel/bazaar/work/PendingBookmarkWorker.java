package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.d.b;
import c.c.a.p.C0676a;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import h.f.b.j;
import i.a.C1101f;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: PendingBookmarkWorker.kt */
public final class PendingBookmarkWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public final Context f12460f;

    /* renamed from: g  reason: collision with root package name */
    public final WorkerParameters f12461g;

    /* renamed from: h  reason: collision with root package name */
    public final b f12462h;

    /* compiled from: PendingBookmarkWorker.kt */
    public interface a extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PendingBookmarkWorker(Context context, WorkerParameters workerParameters, b bVar) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(bVar, "bookmarkRepository");
        this.f12460f = context;
        this.f12461g = workerParameters;
        this.f12462h = bVar;
    }

    public ListenableWorker.a k() {
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        for (BookmarkModel pendingBookmarkWorker$doWork$$inlined$forEach$lambda$1 : this.f12462h.b()) {
            ref$BooleanRef.element = ((Boolean) C1101f.a(null, new PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1(pendingBookmarkWorker$doWork$$inlined$forEach$lambda$1, null, this, ref$BooleanRef), 1, null)).booleanValue() && ref$BooleanRef.element;
        }
        if (ref$BooleanRef.element) {
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        }
        ListenableWorker.a b2 = ListenableWorker.a.b();
        j.a((Object) b2, "Result.retry()");
        return b2;
    }
}
