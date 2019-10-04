package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.e.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.flowable.cy;
import java.util.concurrent.Callable;
import org.b.b;

public final class cz<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final b<T> f8139a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f8140b;
    final c<R, ? super T, R> c;

    public cz(b<T> bVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        this.f8139a = bVar;
        this.f8140b = callable;
        this.c = cVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        try {
            this.f8139a.subscribe(new cy.a(alVar, this.c, io.reactivex.internal.a.b.requireNonNull(this.f8140b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }
}
