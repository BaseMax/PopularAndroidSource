package kotlinx.coroutines;

import h.f.b.j;

/* compiled from: Exceptions.common.kt */
public final class CoroutinesInternalError extends Error {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CoroutinesInternalError(String str, Throwable th) {
        super(str, th);
        j.b(str, "message");
        j.b(th, "cause");
    }
}
