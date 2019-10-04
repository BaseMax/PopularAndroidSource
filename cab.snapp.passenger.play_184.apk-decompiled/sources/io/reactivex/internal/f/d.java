package io.reactivex.internal.f;

import io.reactivex.g.a;

public final class d<T> extends c<T> {
    public final void onNext(T t) {
        if (this.f6866a == null) {
            this.f6866a = t;
            this.c.cancel();
            countDown();
        }
    }

    public final void onError(Throwable th) {
        if (this.f6866a == null) {
            this.f6867b = th;
        } else {
            a.onError(th);
        }
        countDown();
    }
}
