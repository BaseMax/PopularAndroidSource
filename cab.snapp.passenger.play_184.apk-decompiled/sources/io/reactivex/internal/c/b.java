package io.reactivex.internal.c;

import io.reactivex.internal.b.e;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b<T> extends AtomicInteger implements e<T> {
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
