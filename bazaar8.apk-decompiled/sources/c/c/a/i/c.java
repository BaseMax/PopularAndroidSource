package c.c.a.i;

import android.os.Bundle;
import b.w.C0313j;
import b.w.o;
import b.w.p;
import c.c.a.c.c.a;
import h.f.b.j;

/* compiled from: NavControllerExt.kt */
public final class c {
    public static final void a(C0313j jVar, p pVar) {
        j.b(jVar, "$this$navigateSafe");
        j.b(pVar, "directions");
        a(jVar, pVar.b(), pVar.a());
    }

    public static final void a(C0313j jVar, int i2, Bundle bundle) {
        j.b(jVar, "$this$navigateSafe");
        o c2 = jVar.c();
        if ((c2 != null ? c2.a(i2) : null) != null) {
            jVar.a(i2, bundle);
        } else {
            a.f4699b.a(new Throwable("trying to navigate to a unknown destination"));
        }
    }
}
