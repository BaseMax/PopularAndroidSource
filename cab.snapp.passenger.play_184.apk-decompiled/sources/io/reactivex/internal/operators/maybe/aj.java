package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.Callable;

public final class aj<T> extends q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f8447a;

    public aj(Callable<? extends T> callable) {
        this.f8447a = callable;
    }

    public final void subscribeActual(t<? super T> tVar) {
        c empty = d.empty();
        tVar.onSubscribe(empty);
        if (!empty.isDisposed()) {
            try {
                Object call = this.f8447a.call();
                if (!empty.isDisposed()) {
                    if (call == null) {
                        tVar.onComplete();
                        return;
                    }
                    tVar.onSuccess(call);
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
        return this.f8447a.call();
    }
}
