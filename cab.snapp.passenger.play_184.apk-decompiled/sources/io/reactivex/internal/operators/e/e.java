package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class e<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends ao<? extends T>> f7816a;

    public e(Callable<? extends ao<? extends T>> callable) {
        this.f7816a = callable;
    }

    public final void subscribeActual(al<? super T> alVar) {
        try {
            ((ao) b.requireNonNull(this.f7816a.call(), "The singleSupplier returned a null SingleSource")).subscribe(alVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }
}
