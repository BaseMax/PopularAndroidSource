package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.ta  reason: case insensitive filesystem */
/* compiled from: ItemListCategoryHeaderBinding */
public abstract class C0463ta extends ViewDataBinding {
    public ListItem.CategoryHeaderItem A;
    public m B;

    public C0463ta(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0463ta a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0463ta a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0463ta) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_category_header, viewGroup, z, obj);
    }
}
