package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.internal.operators.b.i;
import io.reactivex.y;

public final class al<T> extends ai<y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final ai<T> f7755a;

    public al(ai<T> aiVar) {
        this.f7755a = aiVar;
    }

    public final void subscribeActual(io.reactivex.al<? super y<T>> alVar) {
        this.f7755a.subscribe(new i(alVar));
    }
}
