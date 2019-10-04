package c.c.a.n.u;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0444mb;
import c.c.a.f.K;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewItemViewType;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ReviewsAdapter.kt */
public final class e extends a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final b f6996f;

    /* renamed from: g  reason: collision with root package name */
    public final c f6997g;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(b bVar, c cVar, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : bVar, (i2 & 2) != 0 ? null : cVar);
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == ReviewItemViewType.REVIEW_ITEM.ordinal()) {
            C0444mb a2 = C0444mb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemReviewBinding.inflat….context), parent, false)");
            return new d(a2, this.f6996f, this.f6997g);
        } else if (i2 == ReviewItemViewType.DIVIDER.ordinal()) {
            K a3 = K.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemAppdetailDividerBind….context), parent, false)");
            return new n<>(a3);
        } else {
            throw new IllegalAccessError("Invalid viewType in ReviewsAdapter");
        }
    }

    public e(b bVar, c cVar) {
        this.f6996f = bVar;
        this.f6997g = cVar;
    }
}
