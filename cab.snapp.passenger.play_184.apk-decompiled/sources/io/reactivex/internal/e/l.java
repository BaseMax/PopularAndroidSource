package io.reactivex.internal.e;

import io.reactivex.g.a;

public final class l extends a implements Runnable {
    public final /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    public l(Runnable runnable) {
        super(runnable);
    }

    public final void run() {
        this.f6804b = Thread.currentThread();
        try {
            this.f6803a.run();
            this.f6804b = null;
        } catch (Throwable th) {
            this.f6804b = null;
            lazySet(c);
            a.onError(th);
        }
    }
}
