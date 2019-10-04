package com.adjust.sdk;

import java.lang.Thread;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class CustomScheduledExecutor {
    private ScheduledThreadPoolExecutor executor;
    private String source;
    private final AtomicInteger threadCounter = new AtomicInteger(1);

    class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private Runnable f1919b;

        public a(Runnable runnable) {
            this.f1919b = runnable;
        }

        public final void run() {
            try {
                this.f1919b.run();
            } catch (Throwable th) {
                AdjustFactory.getLogger().error("Runnable error %s", th.getMessage());
            }
        }
    }

    public CustomScheduledExecutor(final String str, boolean z) {
        this.source = str;
        this.executor = new ScheduledThreadPoolExecutor(1, new ThreadFactory() {
            public final Thread newThread(Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(new a(runnable));
                newThread.setPriority(1);
                newThread.setName(Constants.THREAD_PREFIX + newThread.getName() + "-" + str);
                newThread.setDaemon(true);
                newThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                    public final void uncaughtException(Thread thread, Throwable th) {
                        AdjustFactory.getLogger().error("Thread %s with error %s", thread.getName(), th.getMessage());
                    }
                });
                return newThread;
            }
        }, new RejectedExecutionHandler() {
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                AdjustFactory.getLogger().warn("Runnable %s rejected from %s ", runnable.toString(), str);
            }
        });
        if (!z) {
            this.executor.setKeepAliveTime(10, TimeUnit.MILLISECONDS);
            this.executor.allowCoreThreadTimeOut(true);
        }
    }

    public final Future<?> submit(Runnable runnable) {
        return this.executor.submit(runnable);
    }

    public final void shutdownNow() {
        this.executor.shutdownNow();
    }

    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.executor.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
    }

    public final ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.executor.schedule(runnable, j, timeUnit);
    }
}
