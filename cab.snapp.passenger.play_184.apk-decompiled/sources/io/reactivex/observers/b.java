package io.reactivex.observers;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.g;
import java.util.concurrent.atomic.AtomicReference;

public abstract class b<T> implements ag<T>, c {
    final AtomicReference<c> f = new AtomicReference<>();

    public final void onSubscribe(c cVar) {
        g.setOnce(this.f, cVar, getClass());
    }

    public final boolean isDisposed() {
        return this.f.get() == DisposableHelper.DISPOSED;
    }

    public final void dispose() {
        DisposableHelper.dispose(this.f);
    }
}
