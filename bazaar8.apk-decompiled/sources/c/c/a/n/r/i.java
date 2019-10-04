package c.c.a.n.r;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0434ja;
import c.c.a.f.Ra;
import c.c.a.f.Ta;
import c.c.a.f.Va;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarItemViewType;
import h.f.b.j;

/* compiled from: MyBazaarAdapter.kt */
public final class i extends a<RecyclerData> {
    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == MyBazaarItemViewType.HEADER_ITEM.ordinal()) {
            Ta a2 = Ta.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemMyBazaarHeaderBindin…lse\n                    )");
            return new n<>(a2);
        } else if (i2 == MyBazaarItemViewType.ITEM.ordinal()) {
            Ra a3 = Ra.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemMyBazaarBinding.infl….context), parent, false)");
            return new n<>(a3);
        } else if (i2 == MyBazaarItemViewType.DIVIDER.ordinal()) {
            C0434ja a4 = C0434ja.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a4, "ItemDividerBindingImpl.i…lse\n                    )");
            return new n<>(a4);
        } else if (i2 == MyBazaarItemViewType.SWITCH_ITEM.ordinal()) {
            Va a5 = Va.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a5, "ItemMyBazaarSwitchBindin…lse\n                    )");
            return new n<>(a5);
        } else {
            throw new IllegalStateException("unsupported view type");
        }
    }
}
