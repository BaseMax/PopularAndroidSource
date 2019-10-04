package i.a;

import h.c.e;
import h.f.b.j;
import h.j.k;
import h.j.o;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: CoroutineExceptionHandlerImpl.kt */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    public static final List<CoroutineExceptionHandler> f14633a;

    static {
        Iterator<S> it = ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator();
        j.a((Object) it, "ServiceLoader.load(\n    ….classLoader\n).iterator()");
        f14633a = o.c(k.a(it));
    }

    public static final void a(e eVar, Throwable th) {
        j.b(eVar, "context");
        j.b(th, "exception");
        for (CoroutineExceptionHandler handleException : f14633a) {
            try {
                handleException.handleException(eVar, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                j.a((Object) currentThread, "currentThread");
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, E.a(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        j.a((Object) currentThread2, "currentThread");
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
