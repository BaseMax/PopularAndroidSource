package io.reactivex.a.a;

import io.reactivex.ah;
import io.reactivex.c.b;
import io.reactivex.e.h;
import java.util.concurrent.Callable;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile h<Callable<ah>, ah> f6691a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile h<ah, ah> f6692b;

    public static void setInitMainThreadSchedulerHandler(h<Callable<ah>, ah> hVar) {
        f6691a = hVar;
    }

    public static ah initMainThreadScheduler(Callable<ah> callable) {
        if (callable != null) {
            h hVar = f6691a;
            if (hVar == null) {
                return a(callable);
            }
            ah ahVar = (ah) a(hVar, callable);
            if (ahVar != null) {
                return ahVar;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        }
        throw new NullPointerException("scheduler == null");
    }

    public static void setMainThreadSchedulerHandler(h<ah, ah> hVar) {
        f6692b = hVar;
    }

    public static ah onMainThreadScheduler(ah ahVar) {
        if (ahVar != null) {
            h hVar = f6692b;
            if (hVar == null) {
                return ahVar;
            }
            return (ah) a(hVar, ahVar);
        }
        throw new NullPointerException("scheduler == null");
    }

    public static h<Callable<ah>, ah> getInitMainThreadSchedulerHandler() {
        return f6691a;
    }

    public static h<ah, ah> getOnMainThreadSchedulerHandler() {
        return f6692b;
    }

    public static void reset() {
        setInitMainThreadSchedulerHandler(null);
        setMainThreadSchedulerHandler(null);
    }

    private static ah a(Callable<ah> callable) {
        try {
            ah call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw b.propagate(th);
        }
    }

    private static <T, R> R a(h<T, R> hVar, T t) {
        try {
            return hVar.apply(t);
        } catch (Throwable th) {
            throw b.propagate(th);
        }
    }

    private a() {
        throw new AssertionError("No instances.");
    }
}
