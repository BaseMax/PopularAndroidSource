package io.reactivex.internal.util;

import io.reactivex.e.a;
import io.reactivex.e.g;
import java.util.concurrent.CountDownLatch;

public final class e extends CountDownLatch implements a, g<Throwable> {
    public Throwable error;

    public e() {
        super(1);
    }

    public final void accept(Throwable th) {
        this.error = th;
        countDown();
    }

    public final void run() {
        countDown();
    }
}
