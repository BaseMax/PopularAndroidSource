package io.reactivex.internal.c;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.t;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class h<T> extends CountDownLatch implements al<T>, d, t<T> {

    /* renamed from: a  reason: collision with root package name */
    T f6767a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6768b;
    c c;
    volatile boolean d;

    public h() {
        super(1);
    }

    private void a() {
        this.d = true;
        c cVar = this.c;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    public final void onSubscribe(c cVar) {
        this.c = cVar;
        if (this.d) {
            cVar.dispose();
        }
    }

    public final void onSuccess(T t) {
        this.f6767a = t;
        countDown();
    }

    public final void onError(Throwable th) {
        this.f6768b = th;
        countDown();
    }

    public final void onComplete() {
        countDown();
    }

    public final T blockingGet() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.d.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                a();
                throw io.reactivex.internal.util.h.wrapOrThrow(e);
            }
        }
        Throwable th = this.f6768b;
        if (th == null) {
            return this.f6767a;
        }
        throw io.reactivex.internal.util.h.wrapOrThrow(th);
    }

    public final T blockingGet(T t) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.d.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                a();
                throw io.reactivex.internal.util.h.wrapOrThrow(e);
            }
        }
        Throwable th = this.f6768b;
        if (th == null) {
            T t2 = this.f6767a;
            return t2 != null ? t2 : t;
        }
        throw io.reactivex.internal.util.h.wrapOrThrow(th);
    }

    public final Throwable blockingGetError() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.d.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                a();
                return e;
            }
        }
        return this.f6768b;
    }

    public final Throwable blockingGetError(long j, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.d.verifyNonBlocking();
                if (!await(j, timeUnit)) {
                    a();
                    throw io.reactivex.internal.util.h.wrapOrThrow(new TimeoutException(io.reactivex.internal.util.h.timeoutMessage(j, timeUnit)));
                }
            } catch (InterruptedException e) {
                a();
                throw io.reactivex.internal.util.h.wrapOrThrow(e);
            }
        }
        return this.f6768b;
    }

    public final boolean blockingAwait(long j, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.d.verifyNonBlocking();
                if (!await(j, timeUnit)) {
                    a();
                    return false;
                }
            } catch (InterruptedException e) {
                a();
                throw io.reactivex.internal.util.h.wrapOrThrow(e);
            }
        }
        Throwable th = this.f6768b;
        if (th == null) {
            return true;
        }
        throw io.reactivex.internal.util.h.wrapOrThrow(th);
    }
}
