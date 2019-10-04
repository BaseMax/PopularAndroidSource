package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import java.util.concurrent.Callable;

public final class r extends a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<?> f6995a;

    public r(Callable<?> callable) {
        this.f6995a = callable;
    }

    public final void subscribeActual(d dVar) {
        c empty = io.reactivex.b.d.empty();
        dVar.onSubscribe(empty);
        try {
            this.f6995a.call();
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
