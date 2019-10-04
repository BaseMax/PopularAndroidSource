package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Qa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10723a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10724b;

    public Qa(Fa fa, AtomicReference atomicReference) {
        this.f10724b = fa;
        this.f10723a = atomicReference;
    }

    public final void run() {
        synchronized (this.f10723a) {
            try {
                this.f10723a.set(Long.valueOf(this.f10724b.i().a(this.f10724b.q().C(), C0931k.X)));
                this.f10723a.notify();
            } catch (Throwable th) {
                this.f10723a.notify();
                throw th;
            }
        }
    }
}
