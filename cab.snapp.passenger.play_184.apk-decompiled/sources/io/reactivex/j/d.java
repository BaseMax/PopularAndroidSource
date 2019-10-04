package io.reactivex.j;

import io.reactivex.ag;
import io.reactivex.z;

public abstract class d<T> extends z<T> implements ag<T> {
    public abstract Throwable getThrowable();

    public abstract boolean hasComplete();

    public abstract boolean hasObservers();

    public abstract boolean hasThrowable();

    public final d<T> toSerialized() {
        if (this instanceof c) {
            return this;
        }
        return new c(this);
    }
}
