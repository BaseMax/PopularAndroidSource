package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class t<T> extends AtomicReference<c> implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final g<? super T> f6786a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f6787b;
    final a c;
    final g<? super c> d;

    public t(g<? super T> gVar, g<? super Throwable> gVar2, a aVar, g<? super c> gVar3) {
        this.f6786a = gVar;
        this.f6787b = gVar2;
        this.c = aVar;
        this.d = gVar3;
    }

    public final void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            try {
                this.d.accept(this);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                cVar.dispose();
                onError(th);
            }
        }
    }

    public final void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.f6786a.accept(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                ((c) get()).dispose();
                onError(th);
            }
        }
    }

    public final void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.f6787b.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                io.reactivex.g.a.onError(new io.reactivex.c.a(th, th2));
            }
        } else {
            io.reactivex.g.a.onError(th);
        }
    }

    public final void onComplete() {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.c.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    public final boolean hasCustomOnError() {
        return this.f6787b != io.reactivex.internal.a.a.ON_ERROR_MISSING;
    }
}
