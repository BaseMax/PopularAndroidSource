package io.reactivex.internal.f;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class i<T> extends AtomicReference<d> implements c, o<T> {

    /* renamed from: a  reason: collision with root package name */
    final q<? super T> f6871a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f6872b;
    final a c;
    boolean d;

    public i(q<? super T> qVar, g<? super Throwable> gVar, a aVar) {
        this.f6871a = qVar;
        this.f6872b = gVar;
        this.c = aVar;
    }

    public final void onSubscribe(d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }

    public final void onNext(T t) {
        if (!this.d) {
            try {
                if (!this.f6871a.test(t)) {
                    dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                dispose();
                onError(th);
            }
        }
    }

    public final void onError(Throwable th) {
        if (this.d) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.d = true;
        try {
            this.f6872b.accept(th);
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            io.reactivex.g.a.onError(new io.reactivex.c.a(th, th2));
        }
    }

    public final void onComplete() {
        if (!this.d) {
            this.d = true;
            try {
                this.c.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public final void dispose() {
        SubscriptionHelper.cancel(this);
    }

    public final boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }
}
