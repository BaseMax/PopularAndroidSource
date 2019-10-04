package io.reactivex.internal.subscriptions;

import io.reactivex.internal.b.g;
import java.util.concurrent.atomic.AtomicLong;

public abstract class b<T> extends AtomicLong implements g<T> {
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
