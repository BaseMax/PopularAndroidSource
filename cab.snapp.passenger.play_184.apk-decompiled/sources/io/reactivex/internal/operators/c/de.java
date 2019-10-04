package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.observers.d;
import io.reactivex.z;

public final class de<T> extends a<T, T> {
    public de(z<T> zVar) {
        super(zVar);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new d(agVar));
    }
}
