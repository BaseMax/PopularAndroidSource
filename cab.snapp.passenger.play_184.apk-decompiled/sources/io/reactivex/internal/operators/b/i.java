package io.reactivex.internal.operators.b;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.y;

public final class i<T> implements al<T>, c, d, t<T> {

    /* renamed from: a  reason: collision with root package name */
    final al<? super y<T>> f7046a;

    /* renamed from: b  reason: collision with root package name */
    c f7047b;

    public i(al<? super y<T>> alVar) {
        this.f7046a = alVar;
    }

    public final void onSubscribe(c cVar) {
        if (DisposableHelper.validate(this.f7047b, cVar)) {
            this.f7047b = cVar;
            this.f7046a.onSubscribe(this);
        }
    }

    public final void onComplete() {
        this.f7046a.onSuccess(y.createOnComplete());
    }

    public final void onSuccess(T t) {
        this.f7046a.onSuccess(y.createOnNext(t));
    }

    public final void onError(Throwable th) {
        this.f7046a.onSuccess(y.createOnError(th));
    }

    public final boolean isDisposed() {
        return this.f7047b.isDisposed();
    }

    public final void dispose() {
        this.f7047b.dispose();
    }
}
