package i.a;

import h.c.b;
import h.c.e;
import h.f.a.c;
import h.f.b.j;
import i.a.d.a;

/* compiled from: Builders.common.kt */
public final class Aa<T> extends O<T> {

    /* renamed from: d  reason: collision with root package name */
    public c<? super H, ? super b<? super T>, ? extends Object> f14630d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Aa(e eVar, c<? super H, ? super b<? super T>, ? extends Object> cVar) {
        super(eVar, false);
        j.b(eVar, "parentContext");
        j.b(cVar, "block");
        this.f14630d = cVar;
    }

    public void p() {
        c<? super H, ? super b<? super T>, ? extends Object> cVar = this.f14630d;
        if (cVar != null) {
            this.f14630d = null;
            a.a(cVar, this, this);
            return;
        }
        throw new IllegalStateException("Already started");
    }
}
