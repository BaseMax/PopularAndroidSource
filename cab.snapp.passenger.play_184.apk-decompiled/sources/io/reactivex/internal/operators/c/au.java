package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;

public final class au<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f7151a;

    public au(Callable<? extends Throwable> callable) {
        this.f7151a = callable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            th = (Throwable) b.requireNonNull(this.f7151a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.c.b.throwIfFatal(th);
        }
        EmptyDisposable.error(th, (ag<?>) agVar);
    }
}
