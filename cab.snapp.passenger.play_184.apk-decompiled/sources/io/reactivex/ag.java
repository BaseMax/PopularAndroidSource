package io.reactivex;

import io.reactivex.b.c;

public interface ag<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(c cVar);
}
