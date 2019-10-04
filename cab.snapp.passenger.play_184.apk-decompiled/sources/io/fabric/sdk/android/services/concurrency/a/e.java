package io.fabric.sdk.android.services.concurrency.a;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

final class e<T> extends a<T> implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    g f6637b;
    private final h c;
    private final Callable<T> d;
    private final AtomicReference<Thread> e = new AtomicReference<>();

    e(Callable<T> callable, g gVar, h hVar) {
        this.d = callable;
        this.f6637b = gVar;
        this.c = hVar;
    }

    public final void run() {
        if (!isDone() && this.e.compareAndSet(null, Thread.currentThread())) {
            try {
                this.f6631a.a(this.d.call(), null, 2);
            } catch (Throwable th) {
                this.e.getAndSet(null);
                throw th;
            }
            this.e.getAndSet(null);
        }
    }

    /* access modifiers changed from: protected */
    public final void a() {
        Thread andSet = this.e.getAndSet(null);
        if (andSet != null) {
            andSet.interrupt();
        }
    }
}
