package com.bumptech.glide.g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f2074a = new Executor() {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f2076a = new Handler(Looper.getMainLooper());

        public final void execute(Runnable runnable) {
            this.f2076a.post(runnable);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Executor f2075b = new Executor() {
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    private e() {
    }

    public static Executor mainThreadExecutor() {
        return f2074a;
    }

    public static Executor directExecutor() {
        return f2075b;
    }

    public static void shutdownAndAwaitTermination(ExecutorService executorService) {
        executorService.shutdownNow();
        try {
            if (!executorService.awaitTermination(5, TimeUnit.SECONDS)) {
                executorService.shutdownNow();
                if (!executorService.awaitTermination(5, TimeUnit.SECONDS)) {
                    throw new RuntimeException("Failed to shutdown");
                }
            }
        } catch (InterruptedException e) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        }
    }
}
