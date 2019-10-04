package c.c.a.p.a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.b.E;
import c.c.a.p.I;
import com.farsitel.bazaar.work.periodicdelay.StartScheduleUpdateWorker;

/* compiled from: StartScheduleUpdateWorker_AssistedFactory */
public final class a implements StartScheduleUpdateWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final g.a.a<E> f7150a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a.a<I> f7151b;

    public a(g.a.a<E> aVar, g.a.a<I> aVar2) {
        this.f7150a = aVar;
        this.f7151b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new StartScheduleUpdateWorker(context, workerParameters, this.f7150a.get(), this.f7151b.get());
    }
}
