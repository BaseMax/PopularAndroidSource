package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class h extends a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends g> f6972a;

    public h(Callable<? extends g> callable) {
        this.f6972a = callable;
    }

    public final void subscribeActual(d dVar) {
        try {
            ((g) b.requireNonNull(this.f6972a.call(), "The completableSupplier returned a null CompletableSource")).subscribe(dVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}
