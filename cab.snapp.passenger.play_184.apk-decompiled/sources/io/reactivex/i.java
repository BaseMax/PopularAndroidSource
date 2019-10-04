package io.reactivex;

public interface i<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);
}
