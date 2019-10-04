package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.t;
import io.reactivex.v;
import io.reactivex.w;

public final class au<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final v<? extends R, ? super T> f8470b;

    public au(w<T> wVar, v<? extends R, ? super T> vVar) {
        super(wVar);
        this.f8470b = vVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        try {
            this.f8409a.subscribe((t) b.requireNonNull(this.f8470b.apply(tVar), "The operator returned a null MaybeObserver"));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (t<?>) tVar);
        }
    }
}
