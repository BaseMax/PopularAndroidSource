package i.a;

import h.f.b.j;
import i.a.C1125ra;
import kotlin.TypeCastException;

/* compiled from: JobSupport.kt */
public abstract class wa<J extends C1125ra> extends C1133z implements X, C1116ma {

    /* renamed from: d  reason: collision with root package name */
    public final J f14868d;

    public wa(J j2) {
        j.b(j2, "job");
        this.f14868d = j2;
    }

    public Da b() {
        return null;
    }

    public void f() {
        J j2 = this.f14868d;
        if (j2 != null) {
            ((xa) j2).b((wa<?>) this);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.JobSupport");
    }

    public boolean s() {
        return true;
    }
}
