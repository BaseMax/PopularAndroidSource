package kotlinx.coroutines;

import h.c.e;

/* compiled from: CoroutineExceptionHandler.kt */
public interface CoroutineExceptionHandler extends e.b {

    /* renamed from: c  reason: collision with root package name */
    public static final a f15794c = a.f15795a;

    /* compiled from: CoroutineExceptionHandler.kt */
    public static final class a implements e.c<CoroutineExceptionHandler> {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f15795a = new a();
    }

    void handleException(e eVar, Throwable th);
}
