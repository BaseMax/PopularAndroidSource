package io.reactivex.internal.subscriptions;

import io.reactivex.internal.b.g;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.c;

public final class d<T> extends AtomicInteger implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f8636a;

    /* renamed from: b  reason: collision with root package name */
    final c<? super T> f8637b;

    public final int requestFusion(int i) {
        return i & 1;
    }

    public d(c<? super T> cVar, T t) {
        this.f8637b = cVar;
        this.f8636a = t;
    }

    public final void request(long j) {
        if (SubscriptionHelper.validate(j) && compareAndSet(0, 1)) {
            c<? super T> cVar = this.f8637b;
            cVar.onNext(this.f8636a);
            if (get() != 2) {
                cVar.onComplete();
            }
        }
    }

    public final void cancel() {
        lazySet(2);
    }

    public final boolean isCancelled() {
        return get() == 2;
    }

    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.f8636a;
    }

    public final boolean isEmpty() {
        return get() != 0;
    }

    public final void clear() {
        lazySet(1);
    }
}
