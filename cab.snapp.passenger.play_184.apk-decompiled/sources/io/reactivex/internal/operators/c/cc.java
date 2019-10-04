package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;

public final class cc extends z<Object> {
    public static final z<Object> INSTANCE = new cc();

    private cc() {
    }

    public final void subscribeActual(ag<? super Object> agVar) {
        agVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
