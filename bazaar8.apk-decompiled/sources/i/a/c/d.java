package i.a.c;

import h.f.b.j;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* compiled from: Concurrent.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f14748a;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", new Class[]{Boolean.TYPE});
        } catch (Throwable unused) {
            method = null;
        }
        f14748a = method;
    }

    public static final <E> List<E> a() {
        return new CopyOnWriteArrayList();
    }

    public static final <E> Set<E> a(int i2) {
        Set<E> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(i2));
        j.a((Object) newSetFromMap, "Collections.newSetFromMa…ityHashMap(expectedSize))");
        return newSetFromMap;
    }

    public static final boolean a(Executor executor) {
        j.b(executor, "executor");
        try {
            if (!(executor instanceof ScheduledExecutorService)) {
                executor = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor;
            if (scheduledExecutorService != null) {
                Method method = f14748a;
                if (method != null) {
                    method.invoke(scheduledExecutorService, new Object[]{true});
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return true;
        }
    }
}
