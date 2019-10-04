package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;

public final class af<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends ae<? extends T>> f7111a;

    public af(Callable<? extends ae<? extends T>> callable) {
        this.f7111a = callable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            ((ae) b.requireNonNull(this.f7111a.call(), "null ObservableSource supplied")).subscribe(agVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
