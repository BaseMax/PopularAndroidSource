package io.reactivex.internal.f;

public interface l<T> {
    void drain();

    void innerComplete(k<T> kVar);

    void innerError(k<T> kVar, Throwable th);

    void innerNext(k<T> kVar, T t);
}
