package b.r;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;

/* compiled from: ServiceLifecycleDispatcher */
public class B {

    /* renamed from: a  reason: collision with root package name */
    public final m f3141a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f3142b = new Handler();

    /* renamed from: c  reason: collision with root package name */
    public a f3143c;

    /* compiled from: ServiceLifecycleDispatcher */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final m f3144a;

        /* renamed from: b  reason: collision with root package name */
        public final Lifecycle.Event f3145b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3146c = false;

        public a(m mVar, Lifecycle.Event event) {
            this.f3144a = mVar;
            this.f3145b = event;
        }

        public void run() {
            if (!this.f3146c) {
                this.f3144a.b(this.f3145b);
                this.f3146c = true;
            }
        }
    }

    public B(k kVar) {
        this.f3141a = new m(kVar);
    }

    public final void a(Lifecycle.Event event) {
        a aVar = this.f3143c;
        if (aVar != null) {
            aVar.run();
        }
        this.f3143c = new a(this.f3141a, event);
        this.f3142b.postAtFrontOfQueue(this.f3143c);
    }

    public void b() {
        a(Lifecycle.Event.ON_START);
    }

    public void c() {
        a(Lifecycle.Event.ON_CREATE);
    }

    public void d() {
        a(Lifecycle.Event.ON_STOP);
        a(Lifecycle.Event.ON_DESTROY);
    }

    public void e() {
        a(Lifecycle.Event.ON_START);
    }

    public Lifecycle a() {
        return this.f3141a;
    }
}
