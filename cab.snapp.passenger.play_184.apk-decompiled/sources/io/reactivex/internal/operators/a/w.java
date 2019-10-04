package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.g;

public final class w extends a {

    /* renamed from: a  reason: collision with root package name */
    final g f7004a;

    public w(g gVar) {
        this.f7004a = gVar;
    }

    public final void subscribeActual(d dVar) {
        this.f7004a.subscribe(dVar);
    }
}
