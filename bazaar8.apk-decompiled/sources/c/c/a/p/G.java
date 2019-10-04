package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.b.f.a.d;
import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.work.UpgradableAppsWorker;
import g.a.a;

/* compiled from: UpgradableAppsWorker_AssistedFactory */
public final class G implements UpgradableAppsWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<ba> f7144a;

    /* renamed from: b  reason: collision with root package name */
    public final a<d> f7145b;

    public G(a<ba> aVar, a<d> aVar2) {
        this.f7144a = aVar;
        this.f7145b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new UpgradableAppsWorker(context, workerParameters, this.f7144a.get(), this.f7145b.get());
    }
}
