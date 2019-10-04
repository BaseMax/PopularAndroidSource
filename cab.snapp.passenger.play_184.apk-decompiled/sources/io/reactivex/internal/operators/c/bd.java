package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.l;
import io.reactivex.z;
import java.util.concurrent.Callable;

public final class bd<T> extends z<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f7185a;

    public bd(Callable<? extends T> callable) {
        this.f7185a = callable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        l lVar = new l(agVar);
        agVar.onSubscribe(lVar);
        if (!lVar.isDisposed()) {
            try {
                lVar.complete(b.requireNonNull(this.f7185a.call(), "Callable returned null"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                if (!lVar.isDisposed()) {
                    agVar.onError(th);
                } else {
                    a.onError(th);
                }
            }
        }
    }

    public final T call() throws Exception {
        return b.requireNonNull(this.f7185a.call(), "The callable returned a null value");
    }
}
