package io.reactivex.internal.subscriptions;

import io.reactivex.internal.b.g;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a<T> extends AtomicInteger implements g<T> {
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
