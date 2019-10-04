package i.a.e;

import h.h.g;
import i.a.C;
import i.a.c.w;
import i.a.c.y;

/* compiled from: Dispatcher.kt */
public final class b extends c {

    /* renamed from: f  reason: collision with root package name */
    public static final C f14791f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f14792g;

    static {
        b bVar = new b();
        f14792g = bVar;
        f14791f = bVar.b(y.a("kotlinx.coroutines.io.parallelism", g.a(64, w.a()), 0, 0, 12, (Object) null));
    }

    public b() {
        super(0, 0, null, 7, null);
    }

    public void close() {
        throw new UnsupportedOperationException("DefaultDispatcher cannot be closed");
    }

    public String toString() {
        return "DefaultDispatcher";
    }

    public final C z() {
        return f14791f;
    }
}
