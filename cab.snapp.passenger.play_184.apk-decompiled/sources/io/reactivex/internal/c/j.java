package io.reactivex.internal.c;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class j extends AtomicReference<c> implements c, d, g<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    final g<? super Throwable> f6770a;

    /* renamed from: b  reason: collision with root package name */
    final a f6771b;

    public j(a aVar) {
        this.f6770a = this;
        this.f6771b = aVar;
    }

    public j(g<? super Throwable> gVar, a aVar) {
        this.f6770a = gVar;
        this.f6771b = aVar;
    }

    public final void accept(Throwable th) {
        io.reactivex.g.a.onError(new io.reactivex.c.d(th));
    }

    public final void onComplete() {
        try {
            this.f6771b.run();
        } catch (Throwable th) {
            b.throwIfFatal(th);
            io.reactivex.g.a.onError(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    public final void onError(Throwable th) {
        try {
            this.f6770a.accept(th);
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            io.reactivex.g.a.onError(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    public final boolean hasCustomOnError() {
        return this.f6770a != this;
    }
}
