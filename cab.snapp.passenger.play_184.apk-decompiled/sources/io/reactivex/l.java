package io.reactivex;

import io.reactivex.b.c;
import io.reactivex.e.f;

public interface l<T> extends i<T> {
    boolean isCancelled();

    long requested();

    l<T> serialize();

    void setCancellable(f fVar);

    void setDisposable(c cVar);

    boolean tryOnError(Throwable th);
}
