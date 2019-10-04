package io.reactivex.internal.f;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.internal.util.i;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class u<T> extends AtomicInteger implements o<T>, d {

    /* renamed from: a  reason: collision with root package name */
    final c<? super T> f6879a;

    /* renamed from: b  reason: collision with root package name */
    final b f6880b = new b();
    final AtomicLong c = new AtomicLong();
    final AtomicReference<d> d = new AtomicReference<>();
    final AtomicBoolean e = new AtomicBoolean();
    volatile boolean f;

    public u(c<? super T> cVar) {
        this.f6879a = cVar;
    }

    public final void request(long j) {
        if (j <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was ".concat(String.valueOf(j))));
            return;
        }
        SubscriptionHelper.deferredRequest(this.d, this.c, j);
    }

    public final void cancel() {
        if (!this.f) {
            SubscriptionHelper.cancel(this.d);
        }
    }

    public final void onSubscribe(d dVar) {
        if (this.e.compareAndSet(false, true)) {
            this.f6879a.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.d, this.c, dVar);
            return;
        }
        dVar.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    public final void onNext(T t) {
        i.onNext(this.f6879a, t, (AtomicInteger) this, this.f6880b);
    }

    public final void onError(Throwable th) {
        this.f = true;
        i.onError((c<?>) this.f6879a, th, (AtomicInteger) this, this.f6880b);
    }

    public final void onComplete() {
        this.f = true;
        i.onComplete((c<?>) this.f6879a, (AtomicInteger) this, this.f6880b);
    }
}
