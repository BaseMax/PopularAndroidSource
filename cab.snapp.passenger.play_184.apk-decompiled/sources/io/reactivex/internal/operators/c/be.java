package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.l;
import io.reactivex.z;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class be<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f7186a;

    /* renamed from: b  reason: collision with root package name */
    final long f7187b;
    final TimeUnit c;

    public be(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f7186a = future;
        this.f7187b = j;
        this.c = timeUnit;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        l lVar = new l(agVar);
        agVar.onSubscribe(lVar);
        if (!lVar.isDisposed()) {
            try {
                lVar.complete(b.requireNonNull(this.c != null ? this.f7186a.get(this.f7187b, this.c) : this.f7186a.get(), "Future returned null"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                if (!lVar.isDisposed()) {
                    agVar.onError(th);
                }
            }
        }
    }
}
