package io.reactivex.internal.c;

public final class g<T> extends e<T> {
    public final void onNext(T t) {
        this.f6765a = t;
    }

    public final void onError(Throwable th) {
        this.f6765a = null;
        this.f6766b = th;
        countDown();
    }
}
