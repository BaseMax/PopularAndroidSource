package com.bumptech.glide.load.b.c;

import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class a implements ExecutorService {

    /* renamed from: a  reason: collision with root package name */
    private static final long f2172a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b  reason: collision with root package name */
    private static volatile int f2173b;
    private final ExecutorService c;

    /* renamed from: com.bumptech.glide.load.b.c.a$a  reason: collision with other inner class name */
    static final class C0041a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final b f2174a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f2175b;
        private final String c;
        private int d;

        C0041a(String str, b bVar, boolean z) {
            this.c = str;
            this.f2174a = bVar;
            this.f2175b = z;
        }

        public final synchronized Thread newThread(Runnable runnable) {
            AnonymousClass1 r0;
            r0 = new Thread(runnable, "glide-" + this.c + "-thread-" + this.d) {
                public final void run() {
                    Process.setThreadPriority(9);
                    if (C0041a.this.f2175b) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th) {
                        C0041a.this.f2174a.handle(th);
                    }
                }
            };
            this.d = this.d + 1;
            return r0;
        }
    }

    public interface b {
        public static final b DEFAULT = LOG;
        public static final b IGNORE = new b() {
            public final void handle(Throwable th) {
            }
        };
        public static final b LOG = new b() {
            public final void handle(Throwable th) {
            }
        };
        public static final b THROW = new b() {
            public final void handle(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        };

        void handle(Throwable th);
    }

    public static a newDiskCacheExecutor() {
        return newDiskCacheExecutor(1, "disk-cache", b.DEFAULT);
    }

    public static a newDiskCacheExecutor(b bVar) {
        return newDiskCacheExecutor(1, "disk-cache", bVar);
    }

    public static a newDiskCacheExecutor(int i, String str, b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C0041a(str, bVar, true));
        return new a(threadPoolExecutor);
    }

    public static a newSourceExecutor() {
        return newSourceExecutor(calculateBestThreadCount(), "source", b.DEFAULT);
    }

    public static a newSourceExecutor(b bVar) {
        return newSourceExecutor(calculateBestThreadCount(), "source", bVar);
    }

    public static a newSourceExecutor(int i, String str, b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C0041a(str, bVar, false));
        return new a(threadPoolExecutor);
    }

    public static a newUnlimitedSourceExecutor() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, f2172a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new C0041a("source-unlimited", b.DEFAULT, false));
        return new a(threadPoolExecutor);
    }

    public static a newAnimationExecutor() {
        return newAnimationExecutor(calculateBestThreadCount() >= 4 ? 2 : 1, b.DEFAULT);
    }

    public static a newAnimationExecutor(int i, b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, i, f2172a, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C0041a("animation", bVar, true));
        return new a(threadPoolExecutor);
    }

    private a(ExecutorService executorService) {
        this.c = executorService;
    }

    public final void execute(Runnable runnable) {
        this.c.execute(runnable);
    }

    public final Future<?> submit(Runnable runnable) {
        return this.c.submit(runnable);
    }

    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.c.invokeAll(collection);
    }

    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.c.invokeAll(collection, j, timeUnit);
    }

    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return this.c.invokeAny(collection);
    }

    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.c.invokeAny(collection, j, timeUnit);
    }

    public final <T> Future<T> submit(Runnable runnable, T t) {
        return this.c.submit(runnable, t);
    }

    public final <T> Future<T> submit(Callable<T> callable) {
        return this.c.submit(callable);
    }

    public final void shutdown() {
        this.c.shutdown();
    }

    public final List<Runnable> shutdownNow() {
        return this.c.shutdownNow();
    }

    public final boolean isShutdown() {
        return this.c.isShutdown();
    }

    public final boolean isTerminated() {
        return this.c.isTerminated();
    }

    public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.c.awaitTermination(j, timeUnit);
    }

    public final String toString() {
        return this.c.toString();
    }

    public static int calculateBestThreadCount() {
        if (f2173b == 0) {
            int availableProcessors = Runtime.getRuntime().availableProcessors();
            if (Build.VERSION.SDK_INT < 17) {
                availableProcessors = Math.max(b.a(), availableProcessors);
            }
            f2173b = Math.min(4, availableProcessors);
        }
        return f2173b;
    }
}
