package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.b.h;
import io.reactivex.internal.operators.c.cz;
import io.reactivex.z;

public final class bs<T> extends z<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f7251a;

    public bs(T t) {
        this.f7251a = t;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        cz.a aVar = new cz.a(agVar, this.f7251a);
        agVar.onSubscribe(aVar);
        aVar.run();
    }

    public final T call() {
        return this.f7251a;
    }
}
