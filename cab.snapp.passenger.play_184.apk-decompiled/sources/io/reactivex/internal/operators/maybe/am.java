package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.Callable;

public final class am<T> extends q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f8453a;

    public am(Runnable runnable) {
        this.f8453a = runnable;
    }

    public final void subscribeActual(t<? super T> tVar) {
        c empty = d.empty();
        tVar.onSubscribe(empty);
        if (!empty.isDisposed()) {
            try {
                this.f8453a.run();
                if (!empty.isDisposed()) {
                    tVar.onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                if (!empty.isDisposed()) {
                    tVar.onError(th);
                    return;
                }
                a.onError(th);
            }
        }
    }

    public final T call() throws Exception {
        this.f8453a.run();
        return null;
    }
}
