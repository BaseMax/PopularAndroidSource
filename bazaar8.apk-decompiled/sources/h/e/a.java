package h.e;

import java.io.Closeable;

/* compiled from: Closeable.kt */
public final class a {
    public static final void a(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                h.a.a(th, th2);
            }
        }
    }
}
