package i.a;

import h.f.b.j;
import java.util.concurrent.Executor;

/* renamed from: i.a.ja  reason: case insensitive filesystem */
/* compiled from: Executors.kt */
public final class C1110ja {
    public static final C a(Executor executor) {
        j.b(executor, "$this$asCoroutineDispatcher");
        V v = (V) (!(executor instanceof V) ? null : executor);
        if (v != null) {
            C c2 = v.f14661a;
            if (c2 != null) {
                return c2;
            }
        }
        return new C1108ia(executor);
    }
}
