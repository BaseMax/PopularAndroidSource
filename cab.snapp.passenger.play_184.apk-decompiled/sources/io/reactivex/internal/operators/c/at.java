package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.b.h;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;

public final class at extends z<Object> implements h<Object> {
    public static final z<Object> INSTANCE = new at();

    public final Object call() {
        return null;
    }

    private at() {
    }

    public final void subscribeActual(ag<? super Object> agVar) {
        EmptyDisposable.complete((ag<?>) agVar);
    }
}
