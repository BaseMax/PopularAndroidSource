package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PageDescriptionItem;

/* compiled from: ItemPageDescriptionBinding */
public abstract class Xa extends ViewDataBinding {
    public PageDescriptionItem A;

    public Xa(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static Xa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Xa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Xa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_page_description, viewGroup, z, obj);
    }
}
