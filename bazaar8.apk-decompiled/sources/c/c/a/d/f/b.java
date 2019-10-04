package c.c.a.d.f;

import android.content.Context;
import b.r.F;
import b.r.k;
import c.c.a.d.d.c;
import h.f.b.j;

/* compiled from: BaseActivity.kt */
public abstract class b extends d.a.a.b {
    public F.b u;
    public c v;

    public final F.b A() {
        F.b bVar = this.u;
        if (bVar != null) {
            return bVar;
        }
        j.c("viewModelFactory");
        throw null;
    }

    public final void B() {
        c cVar = this.v;
        if (cVar != null) {
            cVar.a().a((k) this);
        } else {
            j.c("messageManager");
            throw null;
        }
    }

    public void a(String str) {
    }

    public void attachBaseContext(Context context) {
        j.b(context, "newBase");
        super.attachBaseContext(c.c.a.d.g.b.f4814b.b(context));
    }

    public void onPause() {
        super.onPause();
        B();
    }

    public void onResume() {
        super.onResume();
        c cVar = this.v;
        if (cVar != null) {
            cVar.a().a(this, new a(this));
        } else {
            j.c("messageManager");
            throw null;
        }
    }

    public final c z() {
        c cVar = this.v;
        if (cVar != null) {
            return cVar;
        }
        j.c("messageManager");
        throw null;
    }
}
