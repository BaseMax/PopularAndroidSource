package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.j;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.b.c;

public final class bi<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Future<? extends T> f8026b;
    final long c;
    final TimeUnit d;

    public bi(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f8026b = future;
        this.c = j;
        this.d = timeUnit;
    }

    public final void subscribeActual(c<? super T> cVar) {
        io.reactivex.internal.subscriptions.c cVar2 = new io.reactivex.internal.subscriptions.c(cVar);
        cVar.onSubscribe(cVar2);
        try {
            Object obj = this.d != null ? this.f8026b.get(this.c, this.d) : this.f8026b.get();
            if (obj == null) {
                cVar.onError(new NullPointerException("The future returned null"));
            } else {
                cVar2.complete(obj);
            }
        } catch (Throwable th) {
            b.throwIfFatal(th);
            if (!cVar2.isCancelled()) {
                cVar.onError(th);
            }
        }
    }
}
