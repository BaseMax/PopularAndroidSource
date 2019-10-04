package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.internal.operators.b.i;
import io.reactivex.q;
import io.reactivex.y;

public final class aw<T> extends ai<y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final q<T> f8474a;

    public aw(q<T> qVar) {
        this.f8474a = qVar;
    }

    public final void subscribeActual(al<? super y<T>> alVar) {
        this.f8474a.subscribe(new i(alVar));
    }
}
