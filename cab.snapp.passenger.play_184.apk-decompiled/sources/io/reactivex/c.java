package io.reactivex;

import io.reactivex.e.f;

public interface c {
    boolean isDisposed();

    void onComplete();

    void onError(Throwable th);

    void setCancellable(f fVar);

    void setDisposable(io.reactivex.b.c cVar);

    boolean tryOnError(Throwable th);
}
