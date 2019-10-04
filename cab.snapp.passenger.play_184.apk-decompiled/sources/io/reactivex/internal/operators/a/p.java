package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class p extends a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f6993a;

    public p(Callable<? extends Throwable> callable) {
        this.f6993a = callable;
    }

    public final void subscribeActual(d dVar) {
        try {
            th = (Throwable) b.requireNonNull(this.f6993a.call(), "The error returned is null");
        } catch (Throwable th) {
            th = th;
            io.reactivex.c.b.throwIfFatal(th);
        }
        EmptyDisposable.error(th, dVar);
    }
}
