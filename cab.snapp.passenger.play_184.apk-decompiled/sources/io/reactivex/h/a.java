package io.reactivex.h;

import io.reactivex.j;
import io.reactivex.o;

public abstract class a<T> extends j<T> implements o<T>, org.b.a<T, T> {
    public abstract Throwable getThrowable();

    public abstract boolean hasComplete();

    public abstract boolean hasSubscribers();

    public abstract boolean hasThrowable();

    public final a<T> toSerialized() {
        if (this instanceof b) {
            return this;
        }
        return new b(this);
    }
}
