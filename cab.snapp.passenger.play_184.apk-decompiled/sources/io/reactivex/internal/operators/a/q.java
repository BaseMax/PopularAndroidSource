package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;

public final class q extends a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e.a f6994a;

    public q(io.reactivex.e.a aVar) {
        this.f6994a = aVar;
    }

    public final void subscribeActual(d dVar) {
        c empty = io.reactivex.b.d.empty();
        dVar.onSubscribe(empty);
        try {
            this.f6994a.run();
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
