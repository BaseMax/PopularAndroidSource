package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.m.d;
import com.farsitel.bazaar.work.SyncPurchasesWorker;
import g.a.a;

/* compiled from: SyncPurchasesWorker_AssistedFactory */
public final class E implements SyncPurchasesWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f7142a;

    public E(a<d> aVar) {
        this.f7142a = aVar;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new SyncPurchasesWorker(context, workerParameters, this.f7142a.get());
    }
}
