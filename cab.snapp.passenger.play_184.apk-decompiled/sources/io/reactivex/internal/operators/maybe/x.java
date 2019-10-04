package io.reactivex.internal.operators.maybe;

import io.reactivex.b.d;
import io.reactivex.internal.a.b;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.Callable;

public final class x<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f8628a;

    public x(Callable<? extends Throwable> callable) {
        this.f8628a = callable;
    }

    public final void subscribeActual(t<? super T> tVar) {
        tVar.onSubscribe(d.disposed());
        try {
            th = (Throwable) b.requireNonNull(this.f8628a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.c.b.throwIfFatal(th);
        }
        tVar.onError(th);
    }
}
