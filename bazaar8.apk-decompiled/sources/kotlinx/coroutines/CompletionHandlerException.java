package kotlinx.coroutines;

import h.f.b.j;

/* compiled from: Exceptions.kt */
public final class CompletionHandlerException extends RuntimeException {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CompletionHandlerException(String str, Throwable th) {
        super(str, th);
        j.b(str, "message");
        j.b(th, "cause");
    }
}
