package io.reactivex;

import io.reactivex.b.c;
import io.reactivex.e.f;

public interface s<T> {
    boolean isDisposed();

    void onComplete();

    void onError(Throwable th);

    void onSuccess(T t);

    void setCancellable(f fVar);

    void setDisposable(c cVar);

    boolean tryOnError(Throwable th);
}
