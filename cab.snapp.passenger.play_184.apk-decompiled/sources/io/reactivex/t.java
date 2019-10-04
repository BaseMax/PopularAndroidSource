package io.reactivex;

import io.reactivex.b.c;

public interface t<T> {
    void onComplete();

    void onError(Throwable th);

    void onSubscribe(c cVar);

    void onSuccess(T t);
}
