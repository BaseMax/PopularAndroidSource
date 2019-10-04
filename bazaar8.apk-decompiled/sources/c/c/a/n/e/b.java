package c.c.a.n.e;

import android.content.Context;
import c.c.a.e.d.e.a;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: BoughtAppViewModel.kt */
public final class b extends t<None> {
    public final boolean x;
    public final Context y;
    public final a z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(Context context, u uVar, a aVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(aVar, "boughtAppRepository");
        this.y = context;
        this.z = aVar;
    }

    public boolean o() {
        return this.x;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new BoughtAppViewModel$makeData$1(this, null), 3, null);
    }
}
