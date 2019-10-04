package i.a;

import h.c.b;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.d.a;

/* compiled from: Builders.common.kt */
public final class Ba extends Ka {

    /* renamed from: d  reason: collision with root package name */
    public c<? super H, ? super b<? super h>, ? extends Object> f14632d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Ba(e eVar, c<? super H, ? super b<? super h>, ? extends Object> cVar) {
        super(eVar, false);
        j.b(eVar, "parentContext");
        j.b(cVar, "block");
        this.f14632d = cVar;
    }

    public void p() {
        c<? super H, ? super b<? super h>, ? extends Object> cVar = this.f14632d;
        if (cVar != null) {
            this.f14632d = null;
            a.a(cVar, this, this);
            return;
        }
        throw new IllegalStateException("Already started");
    }
}
