package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;

public final class u extends a {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f7001a;

    public u(Runnable runnable) {
        this.f7001a = runnable;
    }

    public final void subscribeActual(d dVar) {
        c empty = io.reactivex.b.d.empty();
        dVar.onSubscribe(empty);
        try {
            this.f7001a.run();
            if (!empty.isDisposed()) {
                dVar.onComplete();
            }
        } catch (Throwable th) {
            b.throwIfFatal(th);
            if (!empty.isDisposed()) {
                dVar.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }
}
