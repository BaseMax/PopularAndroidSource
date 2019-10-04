package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.farsitel.bazaar.work.RegisterDeviceWorker;
import g.a.a;

/* compiled from: RegisterDeviceWorker_AssistedFactory */
public final class s implements RegisterDeviceWorker.a {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f7177a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f7178b;

    public s(a<c.c.a.e.d.a.a> aVar, a<c.c.a.e.d.u.a> aVar2) {
        this.f7177a = aVar;
        this.f7178b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new RegisterDeviceWorker(context, workerParameters, this.f7177a.get(), this.f7178b.get());
    }
}
