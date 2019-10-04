package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.c.cn;
import java.util.concurrent.Callable;

public final class co<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7322a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f7323b;
    final c<R, ? super T, R> c;

    public co(ae<T> aeVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        this.f7322a = aeVar;
        this.f7323b = callable;
        this.c = cVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        try {
            this.f7322a.subscribe(new cn.a(alVar, this.c, b.requireNonNull(this.f7323b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }
}
