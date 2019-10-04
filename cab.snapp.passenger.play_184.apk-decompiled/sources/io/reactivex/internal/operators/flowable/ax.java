package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import java.util.concurrent.Callable;
import org.b.c;

public final class ax<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends Throwable> f7993b;

    public ax(Callable<? extends Throwable> callable) {
        this.f7993b = callable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        try {
            th = (Throwable) b.requireNonNull(this.f7993b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.c.b.throwIfFatal(th);
        }
        EmptySubscription.error(th, cVar);
    }
}
