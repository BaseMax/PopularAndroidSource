package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.Callable;

public final class k<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends w<? extends T>> f8587a;

    public k(Callable<? extends w<? extends T>> callable) {
        this.f8587a = callable;
    }

    public final void subscribeActual(t<? super T> tVar) {
        try {
            ((w) b.requireNonNull(this.f8587a.call(), "The maybeSupplier returned a null MaybeSource")).subscribe(tVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (t<?>) tVar);
        }
    }
}
