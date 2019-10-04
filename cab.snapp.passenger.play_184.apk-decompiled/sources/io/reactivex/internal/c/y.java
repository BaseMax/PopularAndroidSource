package io.reactivex.internal.c;

import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class y<T> implements al<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<c> f6790a;

    /* renamed from: b  reason: collision with root package name */
    final al<? super T> f6791b;

    public y(AtomicReference<c> atomicReference, al<? super T> alVar) {
        this.f6790a = atomicReference;
        this.f6791b = alVar;
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.replace(this.f6790a, cVar);
    }

    public final void onSuccess(T t) {
        this.f6791b.onSuccess(t);
    }

    public final void onError(Throwable th) {
        this.f6791b.onError(th);
    }
}
