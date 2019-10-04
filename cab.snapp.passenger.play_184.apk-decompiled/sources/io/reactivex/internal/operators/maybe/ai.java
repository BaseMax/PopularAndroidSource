package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.Callable;

public final class ai<T> extends q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final a f8446a;

    public ai(a aVar) {
        this.f8446a = aVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        c empty = d.empty();
        tVar.onSubscribe(empty);
        if (!empty.isDisposed()) {
            try {
                this.f8446a.run();
                if (!empty.isDisposed()) {
                    tVar.onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                if (!empty.isDisposed()) {
                    tVar.onError(th);
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public final T call() throws Exception {
        this.f8446a.run();
        return null;
    }
}
