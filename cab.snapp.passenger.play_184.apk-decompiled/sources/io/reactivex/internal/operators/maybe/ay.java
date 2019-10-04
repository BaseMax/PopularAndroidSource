package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;
import io.reactivex.t;

public final class ay extends q<Object> {
    public static final ay INSTANCE = new ay();

    public final void subscribeActual(t<? super Object> tVar) {
        tVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
