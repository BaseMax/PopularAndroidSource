package io.reactivex.internal.operators.e;

import io.reactivex.al;
import io.reactivex.b.d;

public final class ai<T> extends io.reactivex.ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f7748a;

    public ai(T t) {
        this.f7748a = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        alVar.onSubscribe(d.disposed());
        alVar.onSuccess(this.f7748a);
    }
}
