package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class am extends ai<Object> {
    public static final ai<Object> INSTANCE = new am();

    private am() {
    }

    public final void subscribeActual(al<? super Object> alVar) {
        alVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
