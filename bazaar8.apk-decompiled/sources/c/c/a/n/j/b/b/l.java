package c.c.a.n.j.b.b;

import c.c.a.f.C0444mb;
import c.c.a.n.u.a;
import c.c.a.n.u.b;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoReviewItem;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VideoReviewViewHolder.kt */
public final class l extends a {
    public final C0444mb v;
    public final b w;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(C0444mb mbVar, b bVar, int i2, f fVar) {
        this(mbVar, (i2 & 2) != 0 ? null : bVar);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.v.a(50, (Object) ((VideoReviewItem) recyclerData).getReviewItem());
        this.v.a(10, (Object) this.w);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public l(C0444mb mbVar, b bVar) {
        super(mbVar);
        j.b(mbVar, "viewBinding");
        this.v = mbVar;
        this.w = bVar;
    }
}
