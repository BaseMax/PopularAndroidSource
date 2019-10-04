package c.c.a.d.f;

import android.content.Context;
import b.r.F;
import c.c.a.d.d.c;
import c.c.a.d.d.e;
import d.a.a.a;
import h.f.b.j;

/* compiled from: BaseDaggerFragment.kt */
public abstract class i extends o {
    public F.b da;
    public c ea;
    public e fa;

    public final c Qa() {
        c cVar = this.ea;
        if (cVar != null) {
            return cVar;
        }
        j.c("messageManager");
        throw null;
    }

    public final F.b Ra() {
        F.b bVar = this.da;
        if (bVar != null) {
            return bVar;
        }
        j.c("viewModelFactory");
        throw null;
    }

    public void a(Context context) {
        j.b(context, "context");
        a.b(this);
        super.a(context);
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }
}
