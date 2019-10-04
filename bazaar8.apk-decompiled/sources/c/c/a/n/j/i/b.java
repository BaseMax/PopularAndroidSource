package c.c.a.n.j.i;

import android.content.Context;
import c.c.a.e.d.t.a;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: SeasonEpisodesViewModel.kt */
public final class b extends t<a> {
    public final boolean x;
    public final a y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(Context context, u uVar, a aVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(aVar, "seasonEpisodeRepository");
        this.y = aVar;
    }

    public boolean o() {
        return this.x;
    }

    /* renamed from: a */
    public void d(a aVar) {
        j.b(aVar, "params");
        C1125ra unused = C1103g.b(this, null, null, new SeasonEpisodesViewModel$makeData$1(this, aVar, null), 3, null);
    }
}
