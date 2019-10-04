package io.reactivex.internal.disposables;

import io.reactivex.b.c;
import io.reactivex.e.f;
import io.reactivex.g.a;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends AtomicReference<f> implements c {
    public b(f fVar) {
        super(fVar);
    }

    public final boolean isDisposed() {
        return get() == null;
    }

    public final void dispose() {
        if (get() != null) {
            f fVar = (f) getAndSet(null);
            if (fVar != null) {
                try {
                    fVar.cancel();
                } catch (Exception e) {
                    io.reactivex.c.b.throwIfFatal(e);
                    a.onError(e);
                }
            }
        }
    }
}
