package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;

public final class b extends AtomicReference<Throwable> {
    public final boolean addThrowable(Throwable th) {
        return h.addThrowable(this, th);
    }

    public final Throwable terminate() {
        return h.terminate(this);
    }

    public final boolean isTerminated() {
        return get() == h.TERMINATED;
    }
}
