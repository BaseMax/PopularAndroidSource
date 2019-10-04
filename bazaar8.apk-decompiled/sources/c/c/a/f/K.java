package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.common.DividerItem;

/* compiled from: ItemAppdetailDividerBinding */
public abstract class K extends ViewDataBinding {
    public DividerItem A;

    public K(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static K a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static K a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (K) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_divider, viewGroup, z, obj);
    }
}
