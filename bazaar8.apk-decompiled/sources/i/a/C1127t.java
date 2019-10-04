package i.a;

import h.c.e;
import h.f.b.j;
import h.h.g;
import h.k.l;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: i.a.t  reason: case insensitive filesystem */
/* compiled from: CommonPool.kt */
public final class C1127t extends C1104ga {

    /* renamed from: a  reason: collision with root package name */
    public static final int f14862a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f14863b;

    /* renamed from: c  reason: collision with root package name */
    public static final C1127t f14864c = new C1127t();
    public static volatile Executor pool;

    static {
        String str;
        int i2;
        C1127t tVar = f14864c;
        try {
            str = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            Integer b2 = l.b(str);
            if (b2 == null || b2.intValue() < 1) {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + str).toString());
            }
            i2 = b2.intValue();
        } else {
            i2 = -1;
        }
        f14862a = i2;
    }

    public final synchronized Executor A() {
        Executor executor;
        executor = pool;
        if (executor == null) {
            executor = z();
            pool = executor;
        }
        return executor;
    }

    public final int B() {
        Integer valueOf = Integer.valueOf(f14862a);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return g.a(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    public final boolean a(Class<?> cls, ExecutorService executorService) {
        Integer num;
        j.b(cls, "fjpClass");
        j.b(executorService, "executor");
        executorService.submit(C1126s.f14861a);
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            if (!(invoke instanceof Integer)) {
                invoke = null;
            }
            num = (Integer) invoke;
        } catch (Throwable unused) {
            num = null;
        }
        if (num == null) {
            return false;
        }
        boolean z = true;
        if (num.intValue() < 1) {
            z = false;
        }
        return z;
    }

    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool");
    }

    public String toString() {
        return "CommonPool";
    }

    public final ExecutorService y() {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(B(), new r(new AtomicInteger()));
        j.a((Object) newFixedThreadPool, "Executors.newFixedThread…Daemon = true }\n        }");
        return newFixedThreadPool;
    }

    public final ExecutorService z() {
        Class<?> cls;
        ExecutorService executorService;
        ExecutorService executorService2;
        if (System.getSecurityManager() != null) {
            return y();
        }
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return y();
        }
        if (!f14863b && f14862a < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                Object invoke = method != null ? method.invoke(null, new Object[0]) : null;
                if (!(invoke instanceof ExecutorService)) {
                    invoke = null;
                }
                executorService2 = (ExecutorService) invoke;
            } catch (Throwable unused2) {
                executorService2 = null;
            }
            if (executorService2 != null) {
                if (!f14864c.a(cls, executorService2)) {
                    executorService2 = null;
                }
                if (executorService2 != null) {
                    return executorService2;
                }
            }
        }
        try {
            Object newInstance = cls.getConstructor(new Class[]{Integer.TYPE}).newInstance(new Object[]{Integer.valueOf(f14864c.B())});
            if (!(newInstance instanceof ExecutorService)) {
                newInstance = null;
            }
            executorService = (ExecutorService) newInstance;
        } catch (Throwable unused3) {
            executorService = null;
        }
        if (executorService != null) {
            return executorService;
        }
        return y();
    }

    public void a(e eVar, Runnable runnable) {
        Runnable runnable2;
        j.b(eVar, "context");
        j.b(runnable, "block");
        try {
            Executor executor = pool;
            if (executor == null) {
                executor = A();
            }
            Na a2 = Oa.a();
            if (a2 != null) {
                runnable2 = a2.a(runnable);
                if (runnable2 != null) {
                    executor.execute(runnable2);
                }
            }
            runnable2 = runnable;
            executor.execute(runnable2);
        } catch (RejectedExecutionException unused) {
            Na a3 = Oa.a();
            if (a3 != null) {
                a3.c();
            }
            M.f14648g.a(runnable);
        }
    }
}
