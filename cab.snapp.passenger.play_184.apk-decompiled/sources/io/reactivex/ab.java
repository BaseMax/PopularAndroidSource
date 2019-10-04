package io.reactivex;

import io.reactivex.b.c;
import io.reactivex.e.f;

public interface ab<T> extends i<T> {
    boolean isDisposed();

    ab<T> serialize();

    void setCancellable(f fVar);

    void setDisposable(c cVar);

    boolean tryOnError(Throwable th);
}
