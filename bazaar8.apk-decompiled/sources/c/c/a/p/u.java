package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.farsitel.bazaar.work.ReportApplicationWorker;
import g.a.a;

/* compiled from: ReportApplicationWorker_AssistedFactory */
public final class u implements ReportApplicationWorker.b {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.p.a> f7181a;

    public u(a<c.c.a.e.d.p.a> aVar) {
        this.f7181a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new ReportApplicationWorker(context, workerParameters, this.f7181a.get());
    }
}
