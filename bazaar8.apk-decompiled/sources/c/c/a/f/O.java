package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;

/* compiled from: ItemAppdetailMoreDescriptionBinding */
public abstract class O extends ViewDataBinding {
    public final AppCompatTextView A;
    public AppMoreDescriptionItem B;
    public m C;

    public O(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static O a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static O a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (O) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_more_description, viewGroup, z, obj);
    }
}
