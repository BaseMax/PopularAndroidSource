package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.z;

public final class bh<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7194a;

    public bh(ae<T> aeVar) {
        this.f7194a = aeVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7194a.subscribe(agVar);
    }
}
