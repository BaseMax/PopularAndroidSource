package io.reactivex.internal.util;

import io.reactivex.b.c;
import io.reactivex.c.e;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class g {
    private g() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean validate(c cVar, c cVar2, Class<?> cls) {
        b.requireNonNull(cVar2, "next is null");
        if (cVar == null) {
            return true;
        }
        cVar2.dispose();
        if (cVar != DisposableHelper.DISPOSED) {
            reportDoubleSubscription(cls);
        }
        return false;
    }

    public static boolean setOnce(AtomicReference<c> atomicReference, c cVar, Class<?> cls) {
        b.requireNonNull(cVar, "next is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            reportDoubleSubscription(cls);
        }
        return false;
    }

    public static boolean validate(d dVar, d dVar2, Class<?> cls) {
        b.requireNonNull(dVar2, "next is null");
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        if (dVar != SubscriptionHelper.CANCELLED) {
            reportDoubleSubscription(cls);
        }
        return false;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, Class<?> cls) {
        b.requireNonNull(dVar, "next is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() != SubscriptionHelper.CANCELLED) {
            reportDoubleSubscription(cls);
        }
        return false;
    }

    public static String composeMessage(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void reportDoubleSubscription(Class<?> cls) {
        a.onError(new e(composeMessage(cls.getName())));
    }
}
