package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.r.a.d;
import com.farsitel.bazaar.work.ReportCommentWorker;
import g.a.a;

/* compiled from: ReportCommentWorker_AssistedFactory */
public final class w implements ReportCommentWorker.b {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f7183a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7184b;

    public w(a<d> aVar, a<I> aVar2) {
        this.f7183a = aVar;
        this.f7184b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new ReportCommentWorker(context, workerParameters, this.f7183a.get(), this.f7184b.get());
    }
}
