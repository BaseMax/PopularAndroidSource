package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.b.h;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;
import io.reactivex.t;

public final class u extends q<Object> implements h<Object> {
    public static final u INSTANCE = new u();

    public final Object call() {
        return null;
    }

    public final void subscribeActual(t<? super Object> tVar) {
        EmptyDisposable.complete((t<?>) tVar);
    }
}
