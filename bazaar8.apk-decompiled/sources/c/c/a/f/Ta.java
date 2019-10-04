package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarHeaderItem;

/* compiled from: ItemMyBazaarHeaderBinding */
public abstract class Ta extends ViewDataBinding {
    public MyBazaarHeaderItem A;

    public Ta(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static Ta a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ta a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ta) ViewDataBinding.a(layoutInflater, (int) R.layout.item_my_bazaar_header, viewGroup, z, obj);
    }
}
