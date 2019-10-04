package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PromoItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;

/* compiled from: ItemListPromoBinding */
public abstract class Fa extends ViewDataBinding {
    public final AspectRatioImageView A;
    public PromoItem B;
    public m C;

    public Fa(Object obj, View view, int i2, AspectRatioImageView aspectRatioImageView) {
        super(obj, view, i2);
        this.A = aspectRatioImageView;
    }

    public static Fa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Fa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Fa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_promo, viewGroup, z, obj);
    }
}
