package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.r.a.b;
import com.farsitel.bazaar.work.PendingCommentWorker;
import g.a.a;

/* compiled from: PendingCommentWorker_AssistedFactory */
public final class l implements PendingCommentWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7168a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.r.b.b> f7169b;

    public l(a<b> aVar, a<c.c.a.e.d.r.b.b> aVar2) {
        this.f7168a = aVar;
        this.f7169b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new PendingCommentWorker(context, workerParameters, this.f7168a.get(), this.f7169b.get());
    }
}
