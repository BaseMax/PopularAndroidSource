package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;

/* renamed from: c.c.a.f.ra  reason: case insensitive filesystem */
/* compiled from: ItemListCategoryBinding */
public abstract class C0457ra extends ViewDataBinding {
    public m A;
    public ListItem.CategoryItem B;

    public C0457ra(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0457ra a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0457ra a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0457ra) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_category, viewGroup, z, obj);
    }
}
