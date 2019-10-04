package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import java.util.concurrent.Callable;
import org.b.b;
import org.b.c;

public final class ai<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends b<? extends T>> f7949b;

    public ai(Callable<? extends b<? extends T>> callable) {
        this.f7949b = callable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        try {
            ((b) io.reactivex.internal.a.b.requireNonNull(this.f7949b.call(), "The publisher supplied is null")).subscribe(cVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
