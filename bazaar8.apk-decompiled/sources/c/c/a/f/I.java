package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem;

/* compiled from: ItemAppdetailDescriptionBinding */
public abstract class I extends ViewDataBinding {
    public AppDescriptionItem A;
    public m B;

    public I(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static I a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static I a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (I) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_description, viewGroup, z, obj);
    }
}
