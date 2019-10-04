package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.d.b;
import com.farsitel.bazaar.work.BookmarkWorker;
import g.a.a;

/* renamed from: c.c.a.p.b  reason: case insensitive filesystem */
/* compiled from: BookmarkWorker_AssistedFactory */
public final class C0677b implements BookmarkWorker.b {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7154a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7155b;

    public C0677b(a<b> aVar, a<I> aVar2) {
        this.f7154a = aVar;
        this.f7155b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new BookmarkWorker(context, workerParameters, this.f7154a.get(), this.f7155b.get());
    }
}
