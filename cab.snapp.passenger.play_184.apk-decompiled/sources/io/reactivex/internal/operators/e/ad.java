package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import java.util.concurrent.Callable;

public final class ad<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f7735a;

    public ad(Callable<? extends T> callable) {
        this.f7735a = callable;
    }

    public final void subscribeActual(al<? super T> alVar) {
        c empty = d.empty();
        alVar.onSubscribe(empty);
        if (!empty.isDisposed()) {
            try {
                Object requireNonNull = b.requireNonNull(this.f7735a.call(), "The callable returned a null value");
                if (!empty.isDisposed()) {
                    alVar.onSuccess(requireNonNull);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                if (!empty.isDisposed()) {
                    alVar.onError(th);
                } else {
                    a.onError(th);
                }
            }
        }
    }
}
