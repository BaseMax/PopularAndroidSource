package c.c.a.b.e;

import android.os.Bundle;
import b.w.C0313j;
import b.w.o;
import com.farsitel.bazaar.R;
import h.a.A;
import h.f.b.j;

/* compiled from: NavigationManager.kt */
final class a implements C0313j.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f4626a;

    public a(b bVar) {
        this.f4626a = bVar;
    }

    public final void a(C0313j jVar, o oVar, Bundle bundle) {
        j.b(jVar, "controller");
        j.b(oVar, "destination");
        if (oVar.d() == R.id.emptyFragment) {
            jVar.i();
            jVar.b(((Number) A.b(this.f4626a.f4635i, Integer.valueOf(this.f4626a.f4636j))).intValue());
        }
    }
}
