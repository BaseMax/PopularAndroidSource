package io.reactivex.internal.e;

import java.util.concurrent.Callable;

public final class m extends a implements Callable<Void> {
    public final /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    public m(Runnable runnable) {
        super(runnable);
    }

    public final Void call() throws Exception {
        this.f6804b = Thread.currentThread();
        try {
            this.f6803a.run();
            return null;
        } finally {
            lazySet(c);
            this.f6804b = null;
        }
    }
}
