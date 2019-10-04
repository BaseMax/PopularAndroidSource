package io.reactivex.internal.disposables;

import io.reactivex.b.c;
import java.util.concurrent.atomic.AtomicReference;

public final class f extends AtomicReference<c> implements c {
    public f() {
    }

    public f(c cVar) {
        lazySet(cVar);
    }

    public final boolean update(c cVar) {
        return DisposableHelper.set(this, cVar);
    }

    public final boolean replace(c cVar) {
        return DisposableHelper.replace(this, cVar);
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((c) get());
    }
}
