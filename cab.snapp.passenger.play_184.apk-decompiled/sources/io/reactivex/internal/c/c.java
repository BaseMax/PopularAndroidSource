package io.reactivex.internal.c;

import io.reactivex.internal.b.e;

public abstract class c<T> implements e<T> {
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public final boolean offer(T t, T t2) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
