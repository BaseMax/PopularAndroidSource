package c.c.a.n.h;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.C0404ba;
import c.c.a.f.C0434ja;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.categroy.CategoryViewType;
import h.f.b.j;

/* compiled from: CategoryAdapter.kt */
public final class b extends a<RecyclerData> {
    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        ViewDataBinding viewDataBinding;
        j.b(viewGroup, "parent");
        if (i2 == CategoryViewType.DIVIDER_ITEM.ordinal()) {
            viewDataBinding = C0434ja.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemDividerBindingImpl.i….context), parent, false)");
        } else if (i2 == CategoryViewType.CATEGORY_ITEM.ordinal()) {
            viewDataBinding = C0404ba.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemCategoryBinding.infl….context), parent, false)");
        } else {
            throw new IllegalStateException("invalid state");
        }
        return new n<>(viewDataBinding);
    }
}
