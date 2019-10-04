package io.reactivex.internal.f;

public final class e<T> extends c<T> {
    public final void onNext(T t) {
        this.f6866a = t;
    }

    public final void onError(Throwable th) {
        this.f6866a = null;
        this.f6867b = th;
        countDown();
    }
}
