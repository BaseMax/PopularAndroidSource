package io.reactivex.internal.operators.maybe;

import io.reactivex.b.d;
import io.reactivex.internal.b.h;
import io.reactivex.q;
import io.reactivex.t;

public final class at<T> extends q<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f8469a;

    public at(T t) {
        this.f8469a = t;
    }

    public final void subscribeActual(t<? super T> tVar) {
        tVar.onSubscribe(d.disposed());
        tVar.onSuccess(this.f8469a);
    }

    public final T call() {
        return this.f8469a;
    }
}
