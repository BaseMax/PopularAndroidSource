package io.reactivex.internal.c;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class k<T> extends AtomicReference<c> implements al<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final g<? super T> f6772a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f6773b;

    public k(g<? super T> gVar, g<? super Throwable> gVar2) {
        this.f6772a = gVar;
        this.f6773b = gVar2;
    }

    public final void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f6773b.accept(th);
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            a.onError(new io.reactivex.c.a(th, th2));
        }
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void onSuccess(T t) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f6772a.accept(t);
        } catch (Throwable th) {
            b.throwIfFatal(th);
            a.onError(th);
        }
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    public final boolean hasCustomOnError() {
        return this.f6773b != io.reactivex.internal.a.a.ON_ERROR_MISSING;
    }
}
