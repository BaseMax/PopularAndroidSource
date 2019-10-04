package c.c.a.n.c.c.a.a.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import c.c.a.c.h.d;
import c.c.a.f.Bc;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.page.PromoItem;
import h.f.b.j;

/* compiled from: PromoItemVitrinAdapter.kt */
public final class e extends a<PromoItem> {

    /* renamed from: f  reason: collision with root package name */
    public final double f6307f;

    public e() {
        double b2 = (double) d.b();
        Double.isNaN(b2);
        this.f6307f = b2 * 0.85d;
    }

    /* renamed from: a */
    public void b(n<PromoItem> nVar, int i2) {
        j.b(nVar, "holder");
        super.b(nVar, i2);
        View view = nVar.f891b;
        j.a((Object) view, "holder.itemView");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) this.f6307f;
        View view2 = nVar.f891b;
        j.a((Object) view2, "holder.itemView");
        view2.setLayoutParams(layoutParams);
    }

    public n<PromoItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        Bc a2 = Bc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemVitrinPromoBinding.i….context), parent, false)");
        return new n<>(a2);
    }
}
