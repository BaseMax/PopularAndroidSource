package io.reactivex.internal.operators.flowable;

import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.j;
import java.util.concurrent.Callable;
import org.b.c;

public final class bh<T> extends j<T> implements Callable<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f8025b;

    public bh(Callable<? extends T> callable) {
        this.f8025b = callable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        io.reactivex.internal.subscriptions.c cVar2 = new io.reactivex.internal.subscriptions.c(cVar);
        cVar.onSubscribe(cVar2);
        try {
            cVar2.complete(b.requireNonNull(this.f8025b.call(), "The callable returned a null value"));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            if (cVar2.isCancelled()) {
                a.onError(th);
            } else {
                cVar.onError(th);
            }
        }
    }

    public final T call() throws Exception {
        return b.requireNonNull(this.f8025b.call(), "The callable returned a null value");
    }
}
