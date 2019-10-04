package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.NoDiscountTextView;

/* compiled from: ItemVitrinAppBinding */
public abstract class zc extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AspectRatioImageView B;
    public final LocalAwareTextView C;
    public final AppCompatTextView D;
    public final NoDiscountTextView E;
    public PageAppItem F;
    public m G;

    public zc(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AspectRatioImageView aspectRatioImageView, LocalAwareTextView localAwareTextView, AppCompatTextView appCompatTextView, NoDiscountTextView noDiscountTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = aspectRatioImageView;
        this.C = localAwareTextView;
        this.D = appCompatTextView;
        this.E = noDiscountTextView;
    }

    public static zc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static zc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (zc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_vitrin_app, viewGroup, z, obj);
    }
}
