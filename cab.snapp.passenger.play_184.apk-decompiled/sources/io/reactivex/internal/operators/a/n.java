package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class n extends a {
    public static final a INSTANCE = new n();

    private n() {
    }

    public final void subscribeActual(d dVar) {
        EmptyDisposable.complete(dVar);
    }
}
