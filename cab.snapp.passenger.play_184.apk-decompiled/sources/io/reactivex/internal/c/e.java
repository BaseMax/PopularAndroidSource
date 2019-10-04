package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import java.util.concurrent.CountDownLatch;

public abstract class e<T> extends CountDownLatch implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    T f6765a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6766b;
    c c;
    volatile boolean d;

    public e() {
        super(1);
    }

    public final void onSubscribe(c cVar) {
        this.c = cVar;
        if (this.d) {
            cVar.dispose();
        }
    }

    public final void onComplete() {
        countDown();
    }

    public final void dispose() {
        this.d = true;
        c cVar = this.c;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    public final boolean isDisposed() {
        return this.d;
    }

    public final T blockingGet() {
        if (getCount() != 0) {
            try {
                d.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                dispose();
                throw h.wrapOrThrow(e);
            }
        }
        Throwable th = this.f6766b;
        if (th == null) {
            return this.f6765a;
        }
        throw h.wrapOrThrow(th);
    }
}
