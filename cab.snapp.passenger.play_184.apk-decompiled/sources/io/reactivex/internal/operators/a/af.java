package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.d;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class af extends a {
    public static final a INSTANCE = new af();

    private af() {
    }

    public final void subscribeActual(d dVar) {
        dVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
