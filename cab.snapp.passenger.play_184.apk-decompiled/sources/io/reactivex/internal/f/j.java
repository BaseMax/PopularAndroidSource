package io.reactivex.internal.f;

import io.reactivex.g.a;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.h;
import io.reactivex.o;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class j<T> extends CountDownLatch implements o<T>, Future<T>, d {

    /* renamed from: a  reason: collision with root package name */
    T f6873a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6874b;
    final AtomicReference<d> c = new AtomicReference<>();

    public final void cancel() {
    }

    public final void request(long j) {
    }

    public j() {
        super(1);
    }

    public final boolean cancel(boolean z) {
        d dVar;
        do {
            dVar = this.c.get();
            if (dVar == this || dVar == SubscriptionHelper.CANCELLED) {
                return false;
            }
        } while (!this.c.compareAndSet(dVar, SubscriptionHelper.CANCELLED));
        if (dVar != null) {
            dVar.cancel();
        }
        countDown();
        return true;
    }

    public final boolean isCancelled() {
        return this.c.get() == SubscriptionHelper.CANCELLED;
    }

    public final boolean isDone() {
        return getCount() == 0;
    }

    public final T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.d.verifyNonBlocking();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f6874b;
            if (th == null) {
                return this.f6873a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    public final T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.internal.util.d.verifyNonBlocking();
            if (!await(j, timeUnit)) {
                throw new TimeoutException(h.timeoutMessage(j, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f6874b;
            if (th == null) {
                return this.f6873a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    public final void onSubscribe(d dVar) {
        SubscriptionHelper.setOnce(this.c, dVar, Long.MAX_VALUE);
    }

    public final void onNext(T t) {
        if (this.f6873a != null) {
            this.c.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f6873a = t;
    }

    public final void onError(Throwable th) {
        d dVar;
        do {
            dVar = this.c.get();
            if (dVar == this || dVar == SubscriptionHelper.CANCELLED) {
                a.onError(th);
                return;
            }
            this.f6874b = th;
        } while (!this.c.compareAndSet(dVar, this));
        countDown();
    }

    public final void onComplete() {
        if (this.f6873a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        while (true) {
            d dVar = this.c.get();
            if (dVar != this && dVar != SubscriptionHelper.CANCELLED) {
                if (this.c.compareAndSet(dVar, this)) {
                    countDown();
                    break;
                }
            } else {
                break;
            }
        }
    }
}
