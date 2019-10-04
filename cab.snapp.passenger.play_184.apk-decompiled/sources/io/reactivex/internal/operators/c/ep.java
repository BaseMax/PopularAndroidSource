package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ep<T> extends AtomicReference<c> implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final ag<? super T> f7559a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<c> f7560b = new AtomicReference<>();

    public ep(ag<? super T> agVar) {
        this.f7559a = agVar;
    }

    public final void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this.f7560b, cVar)) {
            this.f7559a.onSubscribe(this);
        }
    }

    public final void onNext(T t) {
        this.f7559a.onNext(t);
    }

    public final void onError(Throwable th) {
        dispose();
        this.f7559a.onError(th);
    }

    public final void onComplete() {
        dispose();
        this.f7559a.onComplete();
    }

    public final void dispose() {
        DisposableHelper.dispose(this.f7560b);
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return this.f7560b.get() == DisposableHelper.DISPOSED;
    }

    public final void setResource(c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
