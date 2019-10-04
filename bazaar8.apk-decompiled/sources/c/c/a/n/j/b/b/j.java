package c.c.a.n.j.b.b;

import c.c.a.f.C0428ha;
import c.c.a.n.c.c.a.a.a.i;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;

/* compiled from: SeasonEpisodeItemViewHolder.kt */
public final class j extends n<RecyclerData> {
    public i v;
    public final C0428ha w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(C0428ha haVar) {
        super(haVar);
        h.f.b.j.b(haVar, "viewBinding");
        this.w = haVar;
    }

    public final void a(i iVar) {
        this.v = iVar;
    }

    public void b(RecyclerData recyclerData) {
        h.f.b.j.b(recyclerData, "item");
        this.w.a(11, (Object) this.v);
    }
}
