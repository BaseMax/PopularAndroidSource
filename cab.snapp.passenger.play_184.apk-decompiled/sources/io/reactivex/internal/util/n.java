package io.reactivex.internal.util;

import org.b.c;

public interface n<T, U> {
    boolean accept(c<? super U> cVar, T t);

    boolean cancelled();

    boolean done();

    boolean enter();

    Throwable error();

    int leave(int i);

    long produced(long j);

    long requested();
}
