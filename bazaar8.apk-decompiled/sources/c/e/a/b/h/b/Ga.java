package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Ga implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10630a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10631b;

    public Ga(Fa fa, AtomicReference atomicReference) {
        this.f10631b = fa;
        this.f10630a = atomicReference;
    }

    public final void run() {
        synchronized (this.f10630a) {
            try {
                this.f10630a.set(Boolean.valueOf(this.f10631b.i().k(this.f10631b.q().C())));
                this.f10630a.notify();
            } catch (Throwable th) {
                this.f10630a.notify();
                throw th;
            }
        }
    }
}
