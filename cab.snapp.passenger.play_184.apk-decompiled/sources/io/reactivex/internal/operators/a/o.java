package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class o extends a {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f6992a;

    public o(Throwable th) {
        this.f6992a = th;
    }

    public final void subscribeActual(d dVar) {
        EmptyDisposable.error(this.f6992a, dVar);
    }
}
