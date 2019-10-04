package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.i.c;
import com.farsitel.bazaar.work.LocationUpdatesWorker;
import g.a.a;

/* renamed from: c.c.a.p.h  reason: case insensitive filesystem */
/* compiled from: LocationUpdatesWorker_AssistedFactory */
public final class C0683h implements LocationUpdatesWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<c> f7164a;

    public C0683h(a<c> aVar) {
        this.f7164a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new LocationUpdatesWorker(context, workerParameters, this.f7164a.get());
    }
}
