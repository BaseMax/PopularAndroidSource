package h.c.b.a;

import h.c.e;

/* compiled from: ContinuationImpl.kt */
public final class b implements h.c.b<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final b f14529a = new b();

    public e b() {
        throw new IllegalStateException("This continuation is already complete");
    }

    public String toString() {
        return "This continuation is already complete";
    }

    public void b(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }
}
