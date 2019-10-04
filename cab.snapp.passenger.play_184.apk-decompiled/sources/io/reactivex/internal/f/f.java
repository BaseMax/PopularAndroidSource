package io.reactivex.internal.f;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class f<T> extends AtomicReference<d> implements o<T>, d {
    public static final Object TERMINATED = new Object();

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f6868a;

    public f(Queue<Object> queue) {
        this.f6868a = queue;
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            this.f6868a.offer(NotificationLite.subscription(this));
        }
    }

    public final void onNext(T t) {
        this.f6868a.offer(NotificationLite.next(t));
    }

    public final void onError(Throwable th) {
        this.f6868a.offer(NotificationLite.error(th));
    }

    public final void onComplete() {
        this.f6868a.offer(NotificationLite.complete());
    }

    public final void request(long j) {
        ((d) get()).request(j);
    }

    public final void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.f6868a.offer(TERMINATED);
        }
    }

    public final boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }
}
