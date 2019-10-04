package i.a;

import h.c.e;
import h.f.b.j;
import h.h;

/* compiled from: Builders.common.kt */
public class Ka extends C1088a<h> {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Ka(e eVar, boolean z) {
        super(eVar, z);
        j.b(eVar, "parentContext");
    }

    public boolean f(Throwable th) {
        j.b(th, "exception");
        E.a(b(), th);
        return true;
    }
}
