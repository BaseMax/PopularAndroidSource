package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T> extends CountDownLatch implements ag<T>, c, Future<T> {

    /* renamed from: a  reason: collision with root package name */
    T f6780a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6781b;
    final AtomicReference<c> c = new AtomicReference<>();

    public final void dispose() {
    }

    public p() {
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
            Throwable th = this.f6781b;
            if (th == null) {
                return this.f6780a;
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
            Throwable th = this.f6781b;
            if (th == null) {
                return this.f6780a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this.c, cVar);
    }

    public final void onNext(T t) {
        if (this.f6780a != null) {
            this.c.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f6780a = t;
    }

    public final void onError(Throwable th) {
        c cVar;
        if (this.f6781b == null) {
            this.f6781b = th;
            do {
                cVar = this.c.get();
                if (cVar == this || cVar == DisposableHelper.DISPOSED) {
                    a.onError(th);
                    return;
                }
            } while (!this.c.compareAndSet(cVar, this));
            countDown();
            return;
        }
        a.onError(th);
    }

    public final void onComplete() {
        if (this.f6780a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        while (true) {
            c cVar = this.c.get();
            if (cVar != this && cVar != DisposableHelper.DISPOSED) {
                if (this.c.compareAndSet(cVar, this)) {
                    countDown();
                    break;
                }
            } else {
                break;
            }
        }
    }

    public final boolean isDisposed() {
        return isDone();
    }
}
