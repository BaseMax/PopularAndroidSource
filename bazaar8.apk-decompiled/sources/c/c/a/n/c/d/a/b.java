package c.c.a.n.c.d.a;

import android.content.Context;
import android.view.View;
import c.c.a.c.g.c;
import h.f.b.j;

/* compiled from: BaseDetailToolbarFragment.kt */
final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f6356a;

    public b(a aVar) {
        this.f6356a = aVar;
    }

    public final void onClick(View view) {
        Context Ha = this.f6356a.Ha();
        j.a((Object) Ha, "requireContext()");
        String qb = this.f6356a.qb();
        if (qb != null) {
            c.a(Ha, qb, null, 4, null);
        } else {
            j.a();
            throw null;
        }
    }
}
