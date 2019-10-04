package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.d.b;
import com.farsitel.bazaar.work.SyncBookmarkWorker;
import g.a.a;

/* compiled from: SyncBookmarkWorker_AssistedFactory */
public final class C implements SyncBookmarkWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7140a;

    public C(a<b> aVar) {
        this.f7140a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new SyncBookmarkWorker(context, workerParameters, this.f7140a.get());
    }
}
