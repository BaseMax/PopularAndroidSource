package h;

import h.f.b.j;
import kotlin.Result;

/* compiled from: Result.kt */
public final class e {
    public static final Object a(Throwable th) {
        j.b(th, "exception");
        return new Result.Failure(th);
    }

    public static final void a(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
