package io.reactivex.internal.operators.maybe;

import io.reactivex.b.d;
import io.reactivex.q;
import io.reactivex.t;

public final class w<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f8627a;

    public w(Throwable th) {
        this.f8627a = th;
    }

    public final void subscribeActual(t<? super T> tVar) {
        tVar.onSubscribe(d.disposed());
        tVar.onError(this.f8627a);
    }
}
