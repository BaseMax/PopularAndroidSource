package io.reactivex.internal.e;

import io.reactivex.b.c;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

abstract class a extends AtomicReference<Future<?>> implements c {
    protected static final FutureTask<Void> c = new FutureTask<>(io.reactivex.internal.a.a.EMPTY_RUNNABLE, null);
    protected static final FutureTask<Void> d = new FutureTask<>(io.reactivex.internal.a.a.EMPTY_RUNNABLE, null);

    /* renamed from: a  reason: collision with root package name */
    protected final Runnable f6803a;

    /* renamed from: b  reason: collision with root package name */
    protected Thread f6804b;

    a(Runnable runnable) {
        this.f6803a = runnable;
    }

    public final void dispose() {
        Future future = (Future) get();
        if (future != c) {
            FutureTask<Void> futureTask = d;
            if (future != futureTask && compareAndSet(future, futureTask) && future != null) {
                future.cancel(this.f6804b != Thread.currentThread());
            }
        }
    }

    public final boolean isDisposed() {
        Future future = (Future) get();
        return future == c || future == d;
    }

    public final void setFuture(Future<?> future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == c) {
                break;
            } else if (future2 == d) {
                future.cancel(this.f6804b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    public Runnable getWrappedRunnable() {
        return this.f6803a;
    }
}
