package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.NoDiscountTextView;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemListMiniAppBinding */
public abstract class Da extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final NoDiscountTextView D;
    public final AppCompatTextView E;
    public final FrameLayout F;
    public final AppCompatImageView G;
    public final AppCompatTextView H;
    public final AppCompatTextView I;
    public final MaterialButton J;
    public final ProgressBar K;
    public final CardView L;
    public final CardView M;
    public final CardView N;
    public final AppCompatImageView O;
    public final AppCompatImageView P;
    public final AppCompatImageView Q;
    public final LocalAwareTextView R;
    public final AppCompatTextView S;
    public final AppCompatImageView T;
    public Integer U;
    public PageViewConfigItem V;
    public a W;
    public ListItem.App X;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Da(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, NoDiscountTextView noDiscountTextView, AppCompatTextView appCompatTextView2, FrameLayout frameLayout, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, MaterialButton materialButton, ProgressBar progressBar, CardView cardView, CardView cardView2, CardView cardView3, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, LocalAwareTextView localAwareTextView2, AppCompatTextView appCompatTextView5, AppCompatImageView appCompatImageView6) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatImageView;
        this.C = localAwareTextView;
        this.D = noDiscountTextView;
        this.E = appCompatTextView2;
        this.F = frameLayout;
        this.G = appCompatImageView2;
        this.H = appCompatTextView3;
        this.I = appCompatTextView4;
        this.J = materialButton;
        this.K = progressBar;
        this.L = cardView;
        this.M = cardView2;
        this.N = cardView3;
        this.O = appCompatImageView3;
        this.P = appCompatImageView4;
        this.Q = appCompatImageView5;
        this.R = localAwareTextView2;
        this.S = appCompatTextView5;
        this.T = appCompatImageView6;
    }

    public static Da a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Da a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Da) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_mini_app, viewGroup, z, obj);
    }
}
