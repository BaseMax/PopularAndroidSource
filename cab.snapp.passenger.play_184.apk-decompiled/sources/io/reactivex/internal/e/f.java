package io.reactivex.internal.e;

import io.reactivex.b.c;
import io.reactivex.internal.a.a;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

final class f implements c, Callable<Void> {
    static final FutureTask<Void> f = new FutureTask<>(a.EMPTY_RUNNABLE, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f6824a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<Future<?>> f6825b = new AtomicReference<>();
    final AtomicReference<Future<?>> c = new AtomicReference<>();
    final ExecutorService d;
    Thread e;

    f(Runnable runnable, ExecutorService executorService) {
        this.f6824a = runnable;
        this.d = executorService;
    }

    public final Void call() throws Exception {
        this.e = Thread.currentThread();
        try {
            this.f6824a.run();
            Future submit = this.d.submit(this);
            while (true) {
                Future future = this.f6825b.get();
                if (future != f) {
                    if (this.f6825b.compareAndSet(future, submit)) {
                        break;
                    }
                } else {
                    submit.cancel(this.e != Thread.currentThread());
                }
            }
            this.e = null;
        } catch (Throwable th) {
            this.e = null;
            io.reactivex.g.a.onError(th);
        }
        return null;
    }

    public final void dispose() {
        Future andSet = this.c.getAndSet(f);
        boolean z = true;
        if (!(andSet == null || andSet == f)) {
            andSet.cancel(this.e != Thread.currentThread());
        }
        Future andSet2 = this.f6825b.getAndSet(f);
        if (andSet2 != null && andSet2 != f) {
            if (this.e == Thread.currentThread()) {
                z = false;
            }
            andSet2.cancel(z);
        }
    }

    public final boolean isDisposed() {
        return this.c.get() == f;
    }

    /* access modifiers changed from: package-private */
    public final void a(Future<?> future) {
        Future future2;
        do {
            future2 = this.c.get();
            if (future2 == f) {
                future.cancel(this.e != Thread.currentThread());
                return;
            }
        } while (!this.c.compareAndSet(future2, future));
    }
}
