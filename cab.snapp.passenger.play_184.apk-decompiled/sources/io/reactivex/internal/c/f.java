package io.reactivex.internal.c;

public final class f<T> extends e<T> {
    public final void onNext(T t) {
        if (this.f6765a == null) {
            this.f6765a = t;
            this.c.dispose();
            countDown();
        }
    }

    public final void onError(Throwable th) {
        if (this.f6765a == null) {
            this.f6766b = th;
        }
        countDown();
    }
}
