package c.c.a.n.b.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.K;
import c.c.a.f.X;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDetailViewItemType;
import h.f.b.j;

/* compiled from: MoreArticleAdapter.kt */
public final class a extends c.c.a.n.c.d.a<RecyclerData> {
    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == AppDetailViewItemType.DIVIDER.ordinal()) {
            K a2 = K.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemAppdetailDividerBind….context), parent, false)");
            return new n<>(a2);
        }
        X a3 = X.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a3, "ItemArticleBinding.infla….context), parent, false)");
        return new n<>(a3);
    }
}
