package c.b.a.c.b.c;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: GlideExecutor */
public final class b implements ExecutorService {

    /* renamed from: a  reason: collision with root package name */
    public static final long f3937a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b  reason: collision with root package name */
    public static volatile int f3938b;

    /* renamed from: c  reason: collision with root package name */
    public final ExecutorService f3939c;

    /* compiled from: GlideExecutor */
    private static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public final String f3940a;

        /* renamed from: b  reason: collision with root package name */
        public final C0055b f3941b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3942c;

        /* renamed from: d  reason: collision with root package name */
        public int f3943d;

        public a(String str, C0055b bVar, boolean z) {
            this.f3940a = str;
            this.f3941b = bVar;
            this.f3942c = z;
        }

        public synchronized Thread newThread(Runnable runnable) {
            a aVar;
            aVar = new a(this, runnable, "glide-" + this.f3940a + "-thread-" + this.f3943d);
            this.f3943d = this.f3943d + 1;
            return aVar;
        }
    }

    /* renamed from: c.b.a.c.b.c.b$b  reason: collision with other inner class name */
    /* compiled from: GlideExecutor */
    public interface C0055b {

        /* renamed from: a  reason: collision with root package name */
        public static final C0055b f3944a = new c();

        /* renamed from: b  reason: collision with root package name */
        public static final C0055b f3945b = new d();

        /* renamed from: c  reason: collision with root package name */
        public static final C0055b f3946c = new e();

        /* renamed from: d  reason: collision with root package name */
        public static final C0055b f3947d = f3945b;

        void a(Throwable th);
    }

    public b(ExecutorService executorService) {
        this.f3939c = executorService;
    }

    public static b a(int i2, String str, C0055b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(str, bVar, true));
        return new b(threadPoolExecutor);
    }

    public static b b(int i2, String str, C0055b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(str, bVar, false));
        return new b(threadPoolExecutor);
    }

    public static b c() {
        return a(1, "disk-cache", C0055b.f3947d);
    }

    public static b d() {
        return b(a(), "source", C0055b.f3947d);
    }

    public static b e() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, f3937a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a("source-unlimited", C0055b.f3947d, false));
        return new b(threadPoolExecutor);
    }

    public boolean awaitTermination(long j2, TimeUnit timeUnit) {
        return this.f3939c.awaitTermination(j2, timeUnit);
    }

    public void execute(Runnable runnable) {
        this.f3939c.execute(runnable);
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f3939c.invokeAll(collection);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return this.f3939c.invokeAny(collection);
    }

    public boolean isShutdown() {
        return this.f3939c.isShutdown();
    }

    public boolean isTerminated() {
        return this.f3939c.isTerminated();
    }

    public void shutdown() {
        this.f3939c.shutdown();
    }

    public List<Runnable> shutdownNow() {
        return this.f3939c.shutdownNow();
    }

    public Future<?> submit(Runnable runnable) {
        return this.f3939c.submit(runnable);
    }

    public String toString() {
        return this.f3939c.toString();
    }

    public static b a(int i2, C0055b bVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, i2, f3937a, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a("animation", bVar, true));
        return new b(threadPoolExecutor);
    }

    public static b b() {
        return a(a() >= 4 ? 2 : 1, C0055b.f3947d);
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) {
        return this.f3939c.invokeAll(collection, j2, timeUnit);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) {
        return this.f3939c.invokeAny(collection, j2, timeUnit);
    }

    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f3939c.submit(runnable, t);
    }

    public static int a() {
        if (f3938b == 0) {
            f3938b = Math.min(4, g.a());
        }
        return f3938b;
    }

    public <T> Future<T> submit(Callable<T> callable) {
        return this.f3939c.submit(callable);
    }
}
