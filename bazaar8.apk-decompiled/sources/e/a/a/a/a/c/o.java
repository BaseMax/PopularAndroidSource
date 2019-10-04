package e.a.a.a.a.c;

import android.annotation.TargetApi;
import io.fabric.sdk.android.services.concurrency.DependencyPriorityBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: PriorityThreadPoolExecutor */
public class o extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13737a = Runtime.getRuntime().availableProcessors();

    /* renamed from: b  reason: collision with root package name */
    public static final int f13738b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13739c;

    /* compiled from: PriorityThreadPoolExecutor */
    protected static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public final int f13740a;

        public a(int i2) {
            this.f13740a = i2;
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f13740a);
            thread.setName("Queue");
            return thread;
        }
    }

    static {
        int i2 = f13737a;
        f13738b = i2 + 1;
        f13739c = (i2 * 2) + 1;
    }

    public <T extends Runnable & g & p & m> o(int i2, int i3, long j2, TimeUnit timeUnit, DependencyPriorityBlockingQueue<T> dependencyPriorityBlockingQueue, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, dependencyPriorityBlockingQueue, threadFactory);
        prestartAllCoreThreads();
    }

    public static <T extends Runnable & g & p & m> o a(int i2, int i3) {
        o oVar = new o(i2, i3, 1, TimeUnit.SECONDS, new DependencyPriorityBlockingQueue(), new a(10));
        return oVar;
    }

    public void afterExecute(Runnable runnable, Throwable th) {
        p pVar = (p) runnable;
        pVar.setFinished(true);
        pVar.setError(th);
        getQueue().a();
        super.afterExecute(runnable, th);
    }

    @TargetApi(9)
    public void execute(Runnable runnable) {
        if (n.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    public <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new l(runnable, t);
    }

    public static o a() {
        return a(f13738b, f13739c);
    }

    public DependencyPriorityBlockingQueue getQueue() {
        return (DependencyPriorityBlockingQueue) super.getQueue();
    }

    public <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new l(callable);
    }
}
