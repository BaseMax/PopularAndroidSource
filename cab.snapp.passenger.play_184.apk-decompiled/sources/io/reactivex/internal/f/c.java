package io.reactivex.internal.f;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.h;
import io.reactivex.o;
import java.util.concurrent.CountDownLatch;
import org.b.d;

public abstract class c<T> extends CountDownLatch implements o<T> {

    /* renamed from: a  reason: collision with root package name */
    T f6866a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f6867b;
    d c;
    volatile boolean d;

    public c() {
        super(1);
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.c, dVar)) {
            this.c = dVar;
            if (!this.d) {
                dVar.request(Long.MAX_VALUE);
                if (this.d) {
                    this.c = SubscriptionHelper.CANCELLED;
                    dVar.cancel();
                }
            }
        }
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
                d dVar = this.c;
                this.c = SubscriptionHelper.CANCELLED;
                if (dVar != null) {
                    dVar.cancel();
                }
                throw h.wrapOrThrow(e);
            }
        }
        Throwable th = this.f6867b;
        if (th == null) {
            return this.f6866a;
        }
        throw h.wrapOrThrow(th);
    }
}
