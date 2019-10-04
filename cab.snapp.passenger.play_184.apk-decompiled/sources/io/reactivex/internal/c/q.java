package io.reactivex.internal.c;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class q<T> extends CountDownLatch implements al<T>, c, Future<T> {

    /* renamed from: a  reason: collision with root package name */
    T f6782a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6783b;
    final AtomicReference<c> c = new AtomicReference<>();

    public final void dispose() {
    }

    public q() {
        super(1);
    }

    public final boolean cancel(boolean z) {
        c cVar;
        do {
            cVar = this.c.get();
            if (cVar == this || cVar == DisposableHelper.DISPOSED) {
                return false;
            }
        } while (!this.c.compareAndSet(cVar, DisposableHelper.DISPOSED));
        if (cVar != null) {
            cVar.dispose();
        }
        countDown();
        return true;
    }

    public final boolean isCancelled() {
        return DisposableHelper.isDisposed(this.c.get());
    }

    public final boolean isDone() {
        return getCount() == 0;
    }

    public final T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            d.verifyNonBlocking();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f6783b;
            if (th == null) {
                return this.f6782a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    public final T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            d.verifyNonBlocking();
            if (!await(j, timeUnit)) {
                throw new TimeoutException(h.timeoutMessage(j, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f6783b;
            if (th == null) {
                return this.f6782a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this.c, cVar);
    }

    public final void onSuccess(T t) {
        c cVar = this.c.get();
        if (cVar != DisposableHelper.DISPOSED) {
            this.f6782a = t;
            this.c.compareAndSet(cVar, this);
            countDown();
        }
    }

    public final void onError(Throwable th) {
        c cVar;
        do {
            cVar = this.c.get();
            if (cVar == DisposableHelper.DISPOSED) {
                a.onError(th);
                return;
            }
            this.f6783b = th;
        } while (!this.c.compareAndSet(cVar, this));
        countDown();
    }

    public final boolean isDisposed() {
        return isDone();
    }
}
