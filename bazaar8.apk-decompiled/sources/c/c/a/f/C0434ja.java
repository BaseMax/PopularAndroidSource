package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.common.DividerItem;

/* renamed from: c.c.a.f.ja  reason: case insensitive filesystem */
/* compiled from: ItemDividerBinding */
public abstract class C0434ja extends ViewDataBinding {
    public DividerItem A;

    public C0434ja(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0434ja a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0434ja a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0434ja) ViewDataBinding.a(layoutInflater, (int) R.layout.item_divider, viewGroup, z, obj);
    }
}
