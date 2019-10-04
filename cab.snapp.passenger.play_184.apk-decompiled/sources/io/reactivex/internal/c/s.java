package io.reactivex.internal.c;

public interface s<T> {
    void drain();

    void innerComplete(r<T> rVar);

    void innerError(r<T> rVar, Throwable th);

    void innerNext(r<T> rVar, T t);
}
