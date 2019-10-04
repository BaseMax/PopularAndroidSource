package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;

/* renamed from: c.c.a.f.ba  reason: case insensitive filesystem */
/* compiled from: ItemCategoryBinding */
public abstract class C0404ba extends ViewDataBinding {
    public CategoryItem A;
    public m B;

    public C0404ba(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0404ba a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0404ba a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0404ba) ViewDataBinding.a(layoutInflater, (int) R.layout.item_category, viewGroup, z, obj);
    }
}
