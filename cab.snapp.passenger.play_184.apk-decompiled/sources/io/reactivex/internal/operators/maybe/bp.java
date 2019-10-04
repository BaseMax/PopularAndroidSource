package io.reactivex.internal.operators.maybe;

import io.reactivex.t;
import io.reactivex.w;

public final class bp<T> extends a<T, T> {
    public bp(w<T> wVar) {
        super(wVar);
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(tVar);
    }
}
