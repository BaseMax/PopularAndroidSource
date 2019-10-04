package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class w<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f7888a;

    public w(Callable<? extends Throwable> callable) {
        this.f7888a = callable;
    }

    public final void subscribeActual(al<? super T> alVar) {
        try {
            th = (Throwable) b.requireNonNull(this.f7888a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.c.b.throwIfFatal(th);
        }
        EmptyDisposable.error(th, (al<?>) alVar);
    }
}
