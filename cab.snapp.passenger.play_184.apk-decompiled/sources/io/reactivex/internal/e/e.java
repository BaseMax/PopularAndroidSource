package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.b.d;
import java.util.concurrent.TimeUnit;

public final class e extends ah {
    public static final ah INSTANCE = new e();

    /* renamed from: b  reason: collision with root package name */
    static final ah.c f6823b = new a();
    static final c c;

    static final class a extends ah.c {
        public final void dispose() {
        }

        public final boolean isDisposed() {
            return false;
        }

        a() {
        }

        public final c schedule(Runnable runnable) {
            runnable.run();
            return e.c;
        }

        public final c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        public final c schedulePeriodically(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }
    }

    static {
        c empty = d.empty();
        c = empty;
        empty.dispose();
    }

    private e() {
    }

    public final c scheduleDirect(Runnable runnable) {
        runnable.run();
        return c;
    }

    public final c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }

    public final c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }

    public final ah.c createWorker() {
        return f6823b;
    }
}
