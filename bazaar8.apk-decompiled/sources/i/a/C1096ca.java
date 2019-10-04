package i.a;

import h.f.b.j;
import i.a.C1091ba;
import java.util.concurrent.locks.LockSupport;

/* renamed from: i.a.ca  reason: case insensitive filesystem */
/* compiled from: EventLoop.kt */
public abstract class C1096ca extends C1089aa {
    public abstract Thread D();

    public final void E() {
        Thread D = D();
        if (Thread.currentThread() != D) {
            Na a2 = Oa.a();
            if (a2 != null) {
                a2.a(D);
            } else {
                LockSupport.unpark(D);
            }
        }
    }

    public final void a(long j2, C1091ba.a aVar) {
        j.b(aVar, "delayedTask");
        if (K.a()) {
            if (!(this != M.f14648g)) {
                throw new AssertionError();
            }
        }
        M.f14648g.b(j2, aVar);
    }
}
