package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

public final class d<T> extends AtomicReference<c> implements c, t<T> {

    /* renamed from: a  reason: collision with root package name */
    final g<? super T> f8567a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f8568b;
    final a c;

    public d(g<? super T> gVar, g<? super Throwable> gVar2, a aVar) {
        this.f8567a = gVar;
        this.f8568b = gVar2;
        this.c = aVar;
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((c) get());
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void onSuccess(T t) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f8567a.accept(t);
        } catch (Throwable th) {
            b.throwIfFatal(th);
            io.reactivex.g.a.onError(th);
        }
    }

    public final void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f8568b.accept(th);
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            io.reactivex.g.a.onError(new io.reactivex.c.a(th, th2));
        }
    }

    public final void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.c.run();
        } catch (Throwable th) {
            b.throwIfFatal(th);
            io.reactivex.g.a.onError(th);
        }
    }

    public final boolean hasCustomOnError() {
        return this.f8568b != io.reactivex.internal.a.a.ON_ERROR_MISSING;
    }
}
