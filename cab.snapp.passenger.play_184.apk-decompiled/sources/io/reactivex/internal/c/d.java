package io.reactivex.internal.c;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.b;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class d<T> extends AtomicReference<c> implements al<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final b<? super T, ? super Throwable> f6764a;

    public d(b<? super T, ? super Throwable> bVar) {
        this.f6764a = bVar;
    }

    public final void onError(Throwable th) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f6764a.accept(null, th);
        } catch (Throwable th2) {
            io.reactivex.c.b.throwIfFatal(th2);
            a.onError(new io.reactivex.c.a(th, th2));
        }
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void onSuccess(T t) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f6764a.accept(t, null);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            a.onError(th);
        }
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }
}
