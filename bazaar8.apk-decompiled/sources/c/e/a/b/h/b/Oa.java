package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Oa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10702a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10703b;

    public Oa(Fa fa, AtomicReference atomicReference) {
        this.f10703b = fa;
        this.f10702a = atomicReference;
    }

    public final void run() {
        synchronized (this.f10702a) {
            try {
                this.f10702a.set(this.f10703b.i().l(this.f10703b.q().C()));
                this.f10702a.notify();
            } catch (Throwable th) {
                this.f10702a.notify();
                throw th;
            }
        }
    }
}
