package io.reactivex.internal.disposables;

import io.reactivex.b.c;
import io.reactivex.c.e;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import java.util.concurrent.atomic.AtomicReference;

public enum DisposableHelper implements c {
    ;

    public final void dispose() {
    }

    public final boolean isDisposed() {
        return true;
    }

    private DisposableHelper(String str) {
    }

    public static boolean isDisposed(c cVar) {
        return cVar == DISPOSED;
    }

    public static boolean set(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar != null) {
                    cVar.dispose();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        if (cVar2 != null) {
            cVar2.dispose();
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<c> atomicReference, c cVar) {
        b.requireNonNull(cVar, "d is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() != DISPOSED) {
            reportDisposableSet();
        }
        return false;
    }

    public static boolean replace(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar != null) {
                    cVar.dispose();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        return true;
    }

    public static boolean dispose(AtomicReference<c> atomicReference) {
        c cVar = atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (cVar != disposableHelper) {
            c andSet = atomicReference.getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                if (andSet != null) {
                    andSet.dispose();
                }
                return true;
            }
        }
        return false;
    }

    public static boolean validate(c cVar, c cVar2) {
        if (cVar2 == null) {
            a.onError(new NullPointerException("next is null"));
            return false;
        } else if (cVar == null) {
            return true;
        } else {
            cVar2.dispose();
            reportDisposableSet();
            return false;
        }
    }

    public static void reportDisposableSet() {
        a.onError(new e("Disposable already set!"));
    }

    public static boolean trySet(AtomicReference<c> atomicReference, c cVar) {
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        if (atomicReference.get() == DISPOSED) {
            cVar.dispose();
        }
        return false;
    }
}
