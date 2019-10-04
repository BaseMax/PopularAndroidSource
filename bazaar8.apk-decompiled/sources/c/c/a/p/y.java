package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.farsitel.bazaar.work.SendActionLogsWorker;
import g.a.a;

/* compiled from: SendActionLogsWorker_AssistedFactory */
public final class y implements SendActionLogsWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.a.b.a.a.a> f7187a;

    public y(a<c.c.a.a.b.a.a.a> aVar) {
        this.f7187a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new SendActionLogsWorker(context, workerParameters, this.f7187a.get());
    }
}
