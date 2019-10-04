package io.reactivex.internal.f;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class m<T> extends AtomicReference<d> implements c, o<T>, d {

    /* renamed from: a  reason: collision with root package name */
    final g<? super T> f6877a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f6878b;
    final a c;
    final g<? super d> d;

    public m(g<? super T> gVar, g<? super Throwable> gVar2, a aVar, g<? super d> gVar3) {
        this.f6877a = gVar;
        this.f6878b = gVar2;
        this.c = aVar;
        this.d = gVar3;
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            try {
                this.d.accept(this);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                dVar.cancel();
                onError(th);
            }
        }
    }

    public final void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.f6877a.accept(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                ((d) get()).cancel();
                onError(th);
            }
        }
    }

    public final void onError(Throwable th) {
        if (get() != SubscriptionHelper.CANCELLED) {
            lazySet(SubscriptionHelper.CANCELLED);
            try {
                this.f6878b.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                io.reactivex.g.a.onError(new io.reactivex.c.a(th, th2));
            }
        } else {
            io.reactivex.g.a.onError(th);
        }
    }

    public final void onComplete() {
        if (get() != SubscriptionHelper.CANCELLED) {
            lazySet(SubscriptionHelper.CANCELLED);
            try {
                this.c.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public final void dispose() {
        cancel();
    }

    public final boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    public final void request(long j) {
        ((d) get()).request(j);
    }

    public final void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public final boolean hasCustomOnError() {
        return this.f6878b != io.reactivex.internal.a.a.ON_ERROR_MISSING;
    }
}
