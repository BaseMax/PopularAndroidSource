package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

public final class i<T> extends AtomicReference<c> implements ag<T>, c {
    public static final Object TERMINATED = new Object();

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f6769a;

    public i(Queue<Object> queue) {
        this.f6769a = queue;
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void onNext(T t) {
        this.f6769a.offer(NotificationLite.next(t));
    }

    public final void onError(Throwable th) {
        this.f6769a.offer(NotificationLite.error(th));
    }

    public final void onComplete() {
        this.f6769a.offer(NotificationLite.complete());
    }

    public final void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.f6769a.offer(TERMINATED);
        }
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }
}
