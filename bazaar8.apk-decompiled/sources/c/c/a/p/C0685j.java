package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.d.b;
import com.farsitel.bazaar.work.PendingBookmarkWorker;
import g.a.a;

/* renamed from: c.c.a.p.j  reason: case insensitive filesystem */
/* compiled from: PendingBookmarkWorker_AssistedFactory */
public final class C0685j implements PendingBookmarkWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7166a;

    public C0685j(a<b> aVar) {
        this.f7166a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new PendingBookmarkWorker(context, workerParameters, this.f7166a.get());
    }
}
