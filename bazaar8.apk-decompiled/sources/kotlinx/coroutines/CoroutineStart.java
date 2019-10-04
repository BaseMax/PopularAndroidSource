package kotlinx.coroutines;

import h.c.b;
import h.c.d;
import h.f.a.c;
import h.f.b.j;
import i.a.J;
import i.a.d.a;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: CoroutineStart.kt */
public enum CoroutineStart {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public final <R, T> void a(c<? super R, ? super b<? super T>, ? extends Object> cVar, R r, b<? super T> bVar) {
        j.b(cVar, "block");
        j.b(bVar, "completion");
        int i2 = J.f14642b[ordinal()];
        if (i2 == 1) {
            a.a(cVar, r, bVar);
        } else if (i2 == 2) {
            d.a(cVar, r, bVar);
        } else if (i2 == 3) {
            i.a.d.b.a(cVar, r, bVar);
        } else if (i2 != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean f() {
        return this == LAZY;
    }
}
