package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class i extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static final int f6651a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f6652b;
    private static final int c = ((f6651a * 2) + 1);

    protected static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final int f6653a;

        public a(int i) {
            this.f6653a = i;
        }

        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f6653a);
            thread.setName("Queue");
            return thread;
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f6651a = availableProcessors;
        f6652b = availableProcessors + 1;
    }

    private <T extends Runnable & a & j & g> i(int i, int i2, TimeUnit timeUnit, b<T> bVar, ThreadFactory threadFactory) {
        super(i, i2, 1, timeUnit, bVar, threadFactory);
        prestartAllCoreThreads();
    }

    public static <T extends Runnable & a & j & g> i create(int i, int i2) {
        i iVar = new i(i, i2, TimeUnit.SECONDS, new b(), new a(10));
        return iVar;
    }

    public static i create(int i) {
        return create(i, i);
    }

    public static i create() {
        return create(f6652b, c);
    }

    /* access modifiers changed from: protected */
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new f(runnable, t);
    }

    /* access modifiers changed from: protected */
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new f(callable);
    }

    public final void execute(Runnable runnable) {
        if (h.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    /* access modifiers changed from: protected */
    public final void afterExecute(Runnable runnable, Throwable th) {
        j jVar = (j) runnable;
        jVar.setFinished(true);
        jVar.setError(th);
        getQueue().recycleBlockedQueue();
        super.afterExecute(runnable, th);
    }

    public final b getQueue() {
        return (b) super.getQueue();
    }
}
