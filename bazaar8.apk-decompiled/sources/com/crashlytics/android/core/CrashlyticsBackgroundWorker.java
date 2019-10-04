package com.crashlytics.android.core;

import android.os.Looper;
import e.a.a.a.f;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public class CrashlyticsBackgroundWorker {
    public final ExecutorService executorService;

    public CrashlyticsBackgroundWorker(ExecutorService executorService2) {
        this.executorService = executorService2;
    }

    public Future<?> submit(final Runnable runnable) {
        try {
            return this.executorService.submit(new Runnable() {
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e2) {
                        f.e().b(CrashlyticsCore.TAG, "Failed to execute task.", e2);
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            f.e().d(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    public <T> T submitAndWait(Callable<T> callable) {
        try {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                return this.executorService.submit(callable).get(4, TimeUnit.SECONDS);
            }
            return this.executorService.submit(callable).get();
        } catch (RejectedExecutionException unused) {
            f.e().d(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        } catch (Exception e2) {
            f.e().b(CrashlyticsCore.TAG, "Failed to execute task.", e2);
            return null;
        }
    }

    public <T> Future<T> submit(final Callable<T> callable) {
        try {
            return this.executorService.submit(new Callable<T>() {
                public T call() {
                    try {
                        return callable.call();
                    } catch (Exception e2) {
                        f.e().b(CrashlyticsCore.TAG, "Failed to execute task.", e2);
                        return null;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            f.e().d(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }
}
