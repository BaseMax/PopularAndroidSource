package io.reactivex.b;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

final class e extends AtomicReference<Future<?>> implements c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f6709a;

    e(Future<?> future, boolean z) {
        super(future);
        this.f6709a = z;
    }

    public final boolean isDisposed() {
        Future future = (Future) get();
        return future == null || future.isDone();
    }

    public final void dispose() {
        Future future = (Future) getAndSet(null);
        if (future != null) {
            future.cancel(this.f6709a);
        }
    }
}
