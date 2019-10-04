package io.reactivex.b;

import io.reactivex.internal.a.b;
import java.util.concurrent.atomic.AtomicReference;

abstract class f<T> extends AtomicReference<T> implements c {
    /* access modifiers changed from: protected */
    public abstract void a(T t);

    f(T t) {
        super(b.requireNonNull(t, "value is null"));
    }

    public final void dispose() {
        if (get() != null) {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                a(andSet);
            }
        }
    }

    public final boolean isDisposed() {
        return get() == null;
    }
}
