package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Sa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10730a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10731b;

    public Sa(Fa fa, AtomicReference atomicReference) {
        this.f10731b = fa;
        this.f10730a = atomicReference;
    }

    public final void run() {
        synchronized (this.f10730a) {
            try {
                this.f10730a.set(Double.valueOf(this.f10731b.i().c(this.f10731b.q().C(), C0931k.Z)));
                this.f10730a.notify();
            } catch (Throwable th) {
                this.f10730a.notify();
                throw th;
            }
        }
    }
}
