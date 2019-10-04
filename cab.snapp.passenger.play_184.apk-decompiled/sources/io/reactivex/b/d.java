package io.reactivex.b;

import io.reactivex.e.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Future;

public final class d {
    private d() {
        throw new IllegalStateException("No instances!");
    }

    public static c fromRunnable(Runnable runnable) {
        b.requireNonNull(runnable, "run is null");
        return new g(runnable);
    }

    public static c fromAction(a aVar) {
        b.requireNonNull(aVar, "run is null");
        return new a(aVar);
    }

    public static c fromFuture(Future<?> future) {
        b.requireNonNull(future, "future is null");
        return fromFuture(future, true);
    }

    public static c fromFuture(Future<?> future, boolean z) {
        b.requireNonNull(future, "future is null");
        return new e(future, z);
    }

    public static c fromSubscription(org.b.d dVar) {
        b.requireNonNull(dVar, "subscription is null");
        return new h(dVar);
    }

    public static c empty() {
        return fromRunnable(io.reactivex.internal.a.a.EMPTY_RUNNABLE);
    }

    public static c disposed() {
        return EmptyDisposable.INSTANCE;
    }
}
