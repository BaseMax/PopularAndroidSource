package c.c.a.n.j.b.b;

import c.c.a.f.C0412da;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.EpisodeItemClickListener;
import h.f.b.j;

/* compiled from: EpisodeItemViewHolder.kt */
public final class e extends n<RecyclerData> {
    public final C0412da v;
    public final EpisodeItemClickListener w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(C0412da daVar, EpisodeItemClickListener episodeItemClickListener) {
        super(daVar);
        j.b(daVar, "viewBinding");
        this.v = daVar;
        this.w = episodeItemClickListener;
    }

    public void D() {
        super.D();
        this.v.a(14, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.v.a(14, (Object) this.w);
    }
}
