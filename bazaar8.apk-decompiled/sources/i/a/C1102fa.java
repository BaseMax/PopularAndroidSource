package i.a;

import java.util.concurrent.CancellationException;

/* renamed from: i.a.fa  reason: case insensitive filesystem */
/* compiled from: Exceptions.kt */
public final class C1102fa {
    public static final CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
