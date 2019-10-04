package io.fabric.sdk.android.services.concurrency.a;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

public final class h extends ScheduledThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final f f6640a;

    /* renamed from: b  reason: collision with root package name */
    private final b f6641b;

    public h(int i, f fVar, b bVar) {
        this(i, Executors.defaultThreadFactory(), fVar, bVar);
    }

    public h(int i, ThreadFactory threadFactory, f fVar, b bVar) {
        super(i, threadFactory);
        if (fVar == null) {
            throw new NullPointerException("retry policy must not be null");
        } else if (bVar != null) {
            this.f6640a = fVar;
            this.f6641b = bVar;
        } else {
            throw new NullPointerException("backoff must not be null");
        }
    }

    public final Future<?> scheduleWithRetry(Runnable runnable) {
        return a(Executors.callable(runnable));
    }

    public final <T> Future<T> scheduleWithRetry(Runnable runnable, T t) {
        return a(Executors.callable(runnable, t));
    }

    public final <T> Future<T> scheduleWithRetry(Callable<T> callable) {
        return a(callable);
    }

    private <T> Future<T> a(Callable<T> callable) {
        if (callable != null) {
            e eVar = new e(callable, new g(this.f6641b, this.f6640a), this);
            execute(eVar);
            return eVar;
        }
        throw new NullPointerException();
    }

    public final f getRetryPolicy() {
        return this.f6640a;
    }

    public final b getBackoff() {
        return this.f6641b;
    }
}
