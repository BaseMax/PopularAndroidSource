package io.reactivex.internal.disposables;

import io.reactivex.b.c;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class a extends AtomicReferenceArray<c> implements c {
    public a(int i) {
        super(i);
    }

    public final boolean setResource(int i, c cVar) {
        c cVar2;
        do {
            cVar2 = (c) get(i);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return false;
            }
        } while (!compareAndSet(i, cVar2, cVar));
        if (cVar2 != null) {
            cVar2.dispose();
        }
        return true;
    }

    public final c replaceResource(int i, c cVar) {
        c cVar2;
        do {
            cVar2 = (c) get(i);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return null;
            }
        } while (!compareAndSet(i, cVar2, cVar));
        return cVar2;
    }

    public final void dispose() {
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                if (((c) get(i)) != DisposableHelper.DISPOSED) {
                    c cVar = (c) getAndSet(i, DisposableHelper.DISPOSED);
                    if (!(cVar == DisposableHelper.DISPOSED || cVar == null)) {
                        cVar.dispose();
                    }
                }
            }
        }
    }

    public final boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }
}
