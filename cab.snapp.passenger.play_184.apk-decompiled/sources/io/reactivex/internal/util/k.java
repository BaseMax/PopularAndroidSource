package io.reactivex.internal.util;

import io.reactivex.ag;

public interface k<T, U> {
    void accept(ag<? super U> agVar, T t);

    boolean cancelled();

    boolean done();

    boolean enter();

    Throwable error();

    int leave(int i);
}
