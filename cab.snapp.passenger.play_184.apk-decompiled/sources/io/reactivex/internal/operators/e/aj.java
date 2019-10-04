package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.an;
import io.reactivex.ao;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class aj<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7749a;

    /* renamed from: b  reason: collision with root package name */
    final an<? extends R, ? super T> f7750b;

    public aj(ao<T> aoVar, an<? extends R, ? super T> anVar) {
        this.f7749a = aoVar;
        this.f7750b = anVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        try {
            this.f7749a.subscribe((al) b.requireNonNull(this.f7750b.apply(alVar), "The onLift returned a null SingleObserver"));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }
}
