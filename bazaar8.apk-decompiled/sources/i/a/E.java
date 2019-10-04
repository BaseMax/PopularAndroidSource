package i.a;

import h.a;
import h.c.e;
import h.f.b.j;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: CoroutineExceptionHandler.kt */
public final class E {
    public static final void a(e eVar, Throwable th) {
        j.b(eVar, "context");
        j.b(th, "exception");
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) eVar.get(CoroutineExceptionHandler.f15794c);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(eVar, th);
            } else {
                D.a(eVar, th);
            }
        } catch (Throwable th2) {
            D.a(eVar, a(th, th2));
        }
    }

    public static final Throwable a(Throwable th, Throwable th2) {
        j.b(th, "originalException");
        j.b(th2, "thrownException");
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        a.a(runtimeException, th);
        return runtimeException;
    }
}
