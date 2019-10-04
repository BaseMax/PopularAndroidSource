package io.reactivex.g;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.c.f;
import io.reactivex.d;
import io.reactivex.e.c;
import io.reactivex.e.e;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.e.r;
import io.reactivex.j;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static volatile g<? super Throwable> f6716a;

    /* renamed from: b  reason: collision with root package name */
    static volatile h<? super Runnable, ? extends Runnable> f6717b;
    static volatile h<? super Callable<ah>, ? extends ah> c;
    static volatile h<? super Callable<ah>, ? extends ah> d;
    static volatile h<? super Callable<ah>, ? extends ah> e;
    static volatile h<? super Callable<ah>, ? extends ah> f;
    static volatile h<? super ah, ? extends ah> g;
    static volatile h<? super ah, ? extends ah> h;
    static volatile h<? super ah, ? extends ah> i;
    static volatile h<? super ah, ? extends ah> j;
    static volatile h<? super j, ? extends j> k;
    static volatile h<? super io.reactivex.d.a, ? extends io.reactivex.d.a> l;
    static volatile h<? super z, ? extends z> m;
    static volatile h<? super io.reactivex.f.a, ? extends io.reactivex.f.a> n;
    static volatile h<? super q, ? extends q> o;
    static volatile h<? super ai, ? extends ai> p;
    static volatile h<? super io.reactivex.a, ? extends io.reactivex.a> q;
    static volatile h<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> r;
    static volatile c<? super j, ? super org.b.c, ? extends org.b.c> s;
    static volatile c<? super q, ? super t, ? extends t> t;
    static volatile c<? super z, ? super ag, ? extends ag> u;
    static volatile c<? super ai, ? super al, ? extends al> v;
    static volatile c<? super io.reactivex.a, ? super d, ? extends d> w;
    static volatile e x;
    static volatile boolean y;
    static volatile boolean z;

    public static void lockdown() {
        y = true;
    }

    public static boolean isLockdown() {
        return y;
    }

    public static void setFailOnNonBlockingScheduler(boolean z2) {
        if (!y) {
            z = z2;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static boolean isFailOnNonBlockingScheduler() {
        return z;
    }

    public static h<? super ah, ? extends ah> getComputationSchedulerHandler() {
        return g;
    }

    public static g<? super Throwable> getErrorHandler() {
        return f6716a;
    }

    public static h<? super Callable<ah>, ? extends ah> getInitComputationSchedulerHandler() {
        return c;
    }

    public static h<? super Callable<ah>, ? extends ah> getInitIoSchedulerHandler() {
        return e;
    }

    public static h<? super Callable<ah>, ? extends ah> getInitNewThreadSchedulerHandler() {
        return f;
    }

    public static h<? super Callable<ah>, ? extends ah> getInitSingleSchedulerHandler() {
        return d;
    }

    public static h<? super ah, ? extends ah> getIoSchedulerHandler() {
        return i;
    }

    public static h<? super ah, ? extends ah> getNewThreadSchedulerHandler() {
        return j;
    }

    public static h<? super Runnable, ? extends Runnable> getScheduleHandler() {
        return f6717b;
    }

    public static h<? super ah, ? extends ah> getSingleSchedulerHandler() {
        return h;
    }

    public static ah initComputationScheduler(Callable<ah> callable) {
        b.requireNonNull(callable, "Scheduler Callable can't be null");
        h<? super Callable<ah>, ? extends ah> hVar = c;
        if (hVar == null) {
            return a(callable);
        }
        return a(hVar, callable);
    }

    public static ah initIoScheduler(Callable<ah> callable) {
        b.requireNonNull(callable, "Scheduler Callable can't be null");
        h<? super Callable<ah>, ? extends ah> hVar = e;
        if (hVar == null) {
            return a(callable);
        }
        return a(hVar, callable);
    }

    public static ah initNewThreadScheduler(Callable<ah> callable) {
        b.requireNonNull(callable, "Scheduler Callable can't be null");
        h<? super Callable<ah>, ? extends ah> hVar = f;
        if (hVar == null) {
            return a(callable);
        }
        return a(hVar, callable);
    }

    public static ah initSingleScheduler(Callable<ah> callable) {
        b.requireNonNull(callable, "Scheduler Callable can't be null");
        h<? super Callable<ah>, ? extends ah> hVar = d;
        if (hVar == null) {
            return a(callable);
        }
        return a(hVar, callable);
    }

    public static ah onComputationScheduler(ah ahVar) {
        h<? super ah, ? extends ah> hVar = g;
        if (hVar == null) {
            return ahVar;
        }
        return (ah) a(hVar, ahVar);
    }

    public static void onError(Throwable th) {
        g<? super Throwable> gVar = f6716a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            boolean z2 = true;
            if (!(th instanceof io.reactivex.c.d) && !(th instanceof io.reactivex.c.c) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof io.reactivex.c.a)) {
                z2 = false;
            }
            if (!z2) {
                th = new f(th);
            }
        }
        if (gVar != null) {
            try {
                gVar.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                a(th2);
            }
        }
        th.printStackTrace();
        a(th);
    }

    private static void a(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    public static ah onIoScheduler(ah ahVar) {
        h<? super ah, ? extends ah> hVar = i;
        if (hVar == null) {
            return ahVar;
        }
        return (ah) a(hVar, ahVar);
    }

    public static ah onNewThreadScheduler(ah ahVar) {
        h<? super ah, ? extends ah> hVar = j;
        if (hVar == null) {
            return ahVar;
        }
        return (ah) a(hVar, ahVar);
    }

    public static Runnable onSchedule(Runnable runnable) {
        b.requireNonNull(runnable, "run is null");
        h<? super Runnable, ? extends Runnable> hVar = f6717b;
        if (hVar == null) {
            return runnable;
        }
        return (Runnable) a(hVar, runnable);
    }

    public static ah onSingleScheduler(ah ahVar) {
        h<? super ah, ? extends ah> hVar = h;
        if (hVar == null) {
            return ahVar;
        }
        return (ah) a(hVar, ahVar);
    }

    public static void reset() {
        setErrorHandler(null);
        setScheduleHandler(null);
        setComputationSchedulerHandler(null);
        setInitComputationSchedulerHandler(null);
        setIoSchedulerHandler(null);
        setInitIoSchedulerHandler(null);
        setSingleSchedulerHandler(null);
        setInitSingleSchedulerHandler(null);
        setNewThreadSchedulerHandler(null);
        setInitNewThreadSchedulerHandler(null);
        setOnFlowableAssembly(null);
        setOnFlowableSubscribe(null);
        setOnObservableAssembly(null);
        setOnObservableSubscribe(null);
        setOnSingleAssembly(null);
        setOnSingleSubscribe(null);
        setOnCompletableAssembly(null);
        setOnCompletableSubscribe(null);
        setOnConnectableFlowableAssembly(null);
        setOnConnectableObservableAssembly(null);
        setOnMaybeAssembly(null);
        setOnMaybeSubscribe(null);
        setOnParallelAssembly(null);
        setFailOnNonBlockingScheduler(false);
        setOnBeforeBlocking(null);
    }

    public static void setComputationSchedulerHandler(h<? super ah, ? extends ah> hVar) {
        if (!y) {
            g = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setErrorHandler(g<? super Throwable> gVar) {
        if (!y) {
            f6716a = gVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setInitComputationSchedulerHandler(h<? super Callable<ah>, ? extends ah> hVar) {
        if (!y) {
            c = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setInitIoSchedulerHandler(h<? super Callable<ah>, ? extends ah> hVar) {
        if (!y) {
            e = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setInitNewThreadSchedulerHandler(h<? super Callable<ah>, ? extends ah> hVar) {
        if (!y) {
            f = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setInitSingleSchedulerHandler(h<? super Callable<ah>, ? extends ah> hVar) {
        if (!y) {
            d = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setIoSchedulerHandler(h<? super ah, ? extends ah> hVar) {
        if (!y) {
            i = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setNewThreadSchedulerHandler(h<? super ah, ? extends ah> hVar) {
        if (!y) {
            j = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setScheduleHandler(h<? super Runnable, ? extends Runnable> hVar) {
        if (!y) {
            f6717b = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setSingleSchedulerHandler(h<? super ah, ? extends ah> hVar) {
        if (!y) {
            h = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static h<? super io.reactivex.a, ? extends io.reactivex.a> getOnCompletableAssembly() {
        return q;
    }

    public static c<? super io.reactivex.a, ? super d, ? extends d> getOnCompletableSubscribe() {
        return w;
    }

    public static h<? super j, ? extends j> getOnFlowableAssembly() {
        return k;
    }

    public static h<? super io.reactivex.d.a, ? extends io.reactivex.d.a> getOnConnectableFlowableAssembly() {
        return l;
    }

    public static c<? super j, ? super org.b.c, ? extends org.b.c> getOnFlowableSubscribe() {
        return s;
    }

    public static c<? super q, ? super t, ? extends t> getOnMaybeSubscribe() {
        return t;
    }

    public static h<? super q, ? extends q> getOnMaybeAssembly() {
        return o;
    }

    public static h<? super ai, ? extends ai> getOnSingleAssembly() {
        return p;
    }

    public static c<? super ai, ? super al, ? extends al> getOnSingleSubscribe() {
        return v;
    }

    public static h<? super z, ? extends z> getOnObservableAssembly() {
        return m;
    }

    public static h<? super io.reactivex.f.a, ? extends io.reactivex.f.a> getOnConnectableObservableAssembly() {
        return n;
    }

    public static c<? super z, ? super ag, ? extends ag> getOnObservableSubscribe() {
        return u;
    }

    public static void setOnCompletableAssembly(h<? super io.reactivex.a, ? extends io.reactivex.a> hVar) {
        if (!y) {
            q = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnCompletableSubscribe(c<? super io.reactivex.a, ? super d, ? extends d> cVar) {
        if (!y) {
            w = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnFlowableAssembly(h<? super j, ? extends j> hVar) {
        if (!y) {
            k = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnMaybeAssembly(h<? super q, ? extends q> hVar) {
        if (!y) {
            o = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnConnectableFlowableAssembly(h<? super io.reactivex.d.a, ? extends io.reactivex.d.a> hVar) {
        if (!y) {
            l = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnFlowableSubscribe(c<? super j, ? super org.b.c, ? extends org.b.c> cVar) {
        if (!y) {
            s = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnMaybeSubscribe(c<? super q, t, ? extends t> cVar) {
        if (!y) {
            t = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnObservableAssembly(h<? super z, ? extends z> hVar) {
        if (!y) {
            m = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnConnectableObservableAssembly(h<? super io.reactivex.f.a, ? extends io.reactivex.f.a> hVar) {
        if (!y) {
            n = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnObservableSubscribe(c<? super z, ? super ag, ? extends ag> cVar) {
        if (!y) {
            u = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnSingleAssembly(h<? super ai, ? extends ai> hVar) {
        if (!y) {
            p = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static void setOnSingleSubscribe(c<? super ai, ? super al, ? extends al> cVar) {
        if (!y) {
            v = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static <T> org.b.c<? super T> onSubscribe(j<T> jVar, org.b.c<? super T> cVar) {
        c<? super j, ? super org.b.c, ? extends org.b.c> cVar2 = s;
        return cVar2 != null ? (org.b.c) a(cVar2, jVar, cVar) : cVar;
    }

    public static <T> ag<? super T> onSubscribe(z<T> zVar, ag<? super T> agVar) {
        c<? super z, ? super ag, ? extends ag> cVar = u;
        return cVar != null ? (ag) a(cVar, zVar, agVar) : agVar;
    }

    public static <T> al<? super T> onSubscribe(ai<T> aiVar, al<? super T> alVar) {
        c<? super ai, ? super al, ? extends al> cVar = v;
        return cVar != null ? (al) a(cVar, aiVar, alVar) : alVar;
    }

    public static d onSubscribe(io.reactivex.a aVar, d dVar) {
        c<? super io.reactivex.a, ? super d, ? extends d> cVar = w;
        return cVar != null ? (d) a(cVar, aVar, dVar) : dVar;
    }

    public static <T> t<? super T> onSubscribe(q<T> qVar, t<? super T> tVar) {
        c<? super q, ? super t, ? extends t> cVar = t;
        return cVar != null ? (t) a(cVar, qVar, tVar) : tVar;
    }

    public static <T> q<T> onAssembly(q<T> qVar) {
        h<? super q, ? extends q> hVar = o;
        return hVar != null ? (q) a(hVar, qVar) : qVar;
    }

    public static <T> j<T> onAssembly(j<T> jVar) {
        h<? super j, ? extends j> hVar = k;
        return hVar != null ? (j) a(hVar, jVar) : jVar;
    }

    public static <T> io.reactivex.d.a<T> onAssembly(io.reactivex.d.a<T> aVar) {
        h<? super io.reactivex.d.a, ? extends io.reactivex.d.a> hVar = l;
        return hVar != null ? (io.reactivex.d.a) a(hVar, aVar) : aVar;
    }

    public static <T> z<T> onAssembly(z<T> zVar) {
        h<? super z, ? extends z> hVar = m;
        return hVar != null ? (z) a(hVar, zVar) : zVar;
    }

    public static <T> io.reactivex.f.a<T> onAssembly(io.reactivex.f.a<T> aVar) {
        h<? super io.reactivex.f.a, ? extends io.reactivex.f.a> hVar = n;
        return hVar != null ? (io.reactivex.f.a) a(hVar, aVar) : aVar;
    }

    public static <T> ai<T> onAssembly(ai<T> aiVar) {
        h<? super ai, ? extends ai> hVar = p;
        return hVar != null ? (ai) a(hVar, aiVar) : aiVar;
    }

    public static io.reactivex.a onAssembly(io.reactivex.a aVar) {
        h<? super io.reactivex.a, ? extends io.reactivex.a> hVar = q;
        return hVar != null ? (io.reactivex.a) a(hVar, aVar) : aVar;
    }

    public static void setOnParallelAssembly(h<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> hVar) {
        if (!y) {
            r = hVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static h<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> getOnParallelAssembly() {
        return r;
    }

    public static <T> io.reactivex.parallel.a<T> onAssembly(io.reactivex.parallel.a<T> aVar) {
        h<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> hVar = r;
        return hVar != null ? (io.reactivex.parallel.a) a(hVar, aVar) : aVar;
    }

    public static boolean onBeforeBlocking() {
        e eVar = x;
        if (eVar == null) {
            return false;
        }
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th) {
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public static void setOnBeforeBlocking(e eVar) {
        if (!y) {
            x = eVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    public static e getOnBeforeBlocking() {
        return x;
    }

    public static ah createComputationScheduler(ThreadFactory threadFactory) {
        return new io.reactivex.internal.e.b((ThreadFactory) b.requireNonNull(threadFactory, "threadFactory is null"));
    }

    public static ah createIoScheduler(ThreadFactory threadFactory) {
        return new io.reactivex.internal.e.g((ThreadFactory) b.requireNonNull(threadFactory, "threadFactory is null"));
    }

    public static ah createNewThreadScheduler(ThreadFactory threadFactory) {
        return new io.reactivex.internal.e.h((ThreadFactory) b.requireNonNull(threadFactory, "threadFactory is null"));
    }

    public static ah createSingleScheduler(ThreadFactory threadFactory) {
        return new r((ThreadFactory) b.requireNonNull(threadFactory, "threadFactory is null"));
    }

    private static <T, R> R a(h<T, R> hVar, T t2) {
        try {
            return hVar.apply(t2);
        } catch (Throwable th) {
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    private static <T, U, R> R a(c<T, U, R> cVar, T t2, U u2) {
        try {
            return cVar.apply(t2, u2);
        } catch (Throwable th) {
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    private static ah a(Callable<ah> callable) {
        try {
            return (ah) b.requireNonNull(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    private static ah a(h<? super Callable<ah>, ? extends ah> hVar, Callable<ah> callable) {
        return (ah) b.requireNonNull(a(hVar, callable), "Scheduler Callable result can't be null");
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }
}
