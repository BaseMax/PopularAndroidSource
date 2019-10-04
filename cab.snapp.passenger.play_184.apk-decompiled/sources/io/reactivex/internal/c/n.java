package io.reactivex.internal.c;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class n extends AtomicReference<c> implements c, d {
    public final boolean hasCustomOnError() {
        return false;
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    public final void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    public final void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        a.onError(new io.reactivex.c.d(th));
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
