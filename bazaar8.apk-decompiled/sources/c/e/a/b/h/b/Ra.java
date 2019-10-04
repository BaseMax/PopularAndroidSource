package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Ra implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10727a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10728b;

    public Ra(Fa fa, AtomicReference atomicReference) {
        this.f10728b = fa;
        this.f10727a = atomicReference;
    }

    public final void run() {
        synchronized (this.f10727a) {
            try {
                this.f10727a.set(Integer.valueOf(this.f10728b.i().b(this.f10728b.q().C(), C0931k.Y)));
                this.f10727a.notify();
            } catch (Throwable th) {
                this.f10727a.notify();
                throw th;
            }
        }
    }
}
