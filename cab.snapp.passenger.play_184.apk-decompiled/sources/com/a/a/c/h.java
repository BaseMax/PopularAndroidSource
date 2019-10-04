package com.a.a.c;

import android.os.Looper;
import io.fabric.sdk.android.c;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

final class h {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f1763a;

    public h(ExecutorService executorService) {
        this.f1763a = executorService;
    }

    /* access modifiers changed from: package-private */
    public final <T> T a(Callable<T> callable) {
        try {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                return this.f1763a.submit(callable).get(4, TimeUnit.SECONDS);
            }
            return this.f1763a.submit(callable).get();
        } catch (RejectedExecutionException unused) {
            c.getLogger().d(j.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        } catch (Exception e) {
            c.getLogger().e(j.TAG, "Failed to execute task.", e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final Future<?> a(final Runnable runnable) {
        try {
            return this.f1763a.submit(new Runnable() {
                public final void run() {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        c.getLogger().e(j.TAG, "Failed to execute task.", e);
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            c.getLogger().d(j.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final <T> Future<T> b(final Callable<T> callable) {
        try {
            return this.f1763a.submit(new Callable<T>() {
                public final T call() throws Exception {
                    try {
                        return callable.call();
                    } catch (Exception e) {
                        c.getLogger().e(j.TAG, "Failed to execute task.", e);
                        return null;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            c.getLogger().d(j.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }
}
