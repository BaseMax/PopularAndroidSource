package io.reactivex.internal.subscriptions;

import io.reactivex.c.e;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.util.c;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public enum SubscriptionHelper implements d {
    ;

    public final void cancel() {
    }

    public final void request(long j) {
    }

    private SubscriptionHelper(String str) {
    }

    public static boolean validate(d dVar, d dVar2) {
        if (dVar2 == null) {
            a.onError(new NullPointerException("next is null"));
            return false;
        } else if (dVar == null) {
            return true;
        } else {
            dVar2.cancel();
            reportSubscriptionSet();
            return false;
        }
    }

    public static void reportSubscriptionSet() {
        a.onError(new e("Subscription already set!"));
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        a.onError(new IllegalArgumentException("n > 0 required but it was ".concat(String.valueOf(j))));
        return false;
    }

    public static void reportMoreProduced(long j) {
        a.onError(new e("More produced than requested: ".concat(String.valueOf(j))));
    }

    public static boolean set(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        if (dVar2 != null) {
            dVar2.cancel();
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar) {
        b.requireNonNull(dVar, "s is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() != CANCELLED) {
            reportSubscriptionSet();
        }
        return false;
    }

    public static boolean replace(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        return true;
    }

    public static boolean cancel(AtomicReference<d> atomicReference) {
        d dVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (dVar != subscriptionHelper) {
            d andSet = atomicReference.getAndSet(subscriptionHelper);
            if (andSet != CANCELLED) {
                if (andSet != null) {
                    andSet.cancel();
                }
                return true;
            }
        }
        return false;
    }

    public static boolean deferredSetOnce(AtomicReference<d> atomicReference, AtomicLong atomicLong, d dVar) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0);
        if (andSet != 0) {
            dVar.request(andSet);
        }
        return true;
    }

    public static void deferredRequest(AtomicReference<d> atomicReference, AtomicLong atomicLong, long j) {
        d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.request(j);
            return;
        }
        if (validate(j)) {
            c.add(atomicLong, j);
            d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0);
                if (andSet != 0) {
                    dVar2.request(andSet);
                }
            }
        }
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, long j) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        dVar.request(j);
        return true;
    }
}
