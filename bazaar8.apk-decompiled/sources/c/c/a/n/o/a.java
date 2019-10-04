package c.c.a.n.o;

import android.content.Context;
import c.c.a.e.d.b.C0383m;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: LatestDownloadedAppViewModel.kt */
public final class a extends t<None> {
    public final boolean x;
    public final C0383m y;
    public final Context z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(C0383m mVar, Context context, u uVar) {
        super(context, uVar);
        j.b(mVar, "repository");
        j.b(context, "context");
        j.b(uVar, "env");
        this.y = mVar;
        this.z = context;
    }

    public boolean o() {
        return this.x;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new LatestDownloadedAppViewModel$makeData$1(this, null), 3, null);
    }
}
