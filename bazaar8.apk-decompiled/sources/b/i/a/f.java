package b.i.a;

import android.app.Application;
import b.i.a.h;

/* compiled from: ActivityRecreator */
class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Application f2507a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h.a f2508b;

    public f(Application application, h.a aVar) {
        this.f2507a = application;
        this.f2508b = aVar;
    }

    public void run() {
        this.f2507a.unregisterActivityLifecycleCallbacks(this.f2508b);
    }
}
