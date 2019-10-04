package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.NoDiscountTextView;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.pa  reason: case insensitive filesystem */
/* compiled from: ItemListAppBinding */
public abstract class C0452pa extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final NoDiscountTextView D;
    public final AppCompatTextView E;
    public final FrameLayout F;
    public final View G;
    public final AppCompatImageView H;
    public final AppCompatTextView I;
    public final MaterialButton J;
    public final ProgressBar K;
    public final AppCompatTextView L;
    public final AppCompatImageView M;
    public final AppCompatTextView N;
    public Integer O;
    public ListItem.App P;
    public a Q;
    public PageViewConfigItem R;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0452pa(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, NoDiscountTextView noDiscountTextView, AppCompatTextView appCompatTextView2, FrameLayout frameLayout, View view2, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView3, MaterialButton materialButton, ProgressBar progressBar, AppCompatTextView appCompatTextView4, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView5) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatImageView;
        this.C = localAwareTextView;
        this.D = noDiscountTextView;
        this.E = appCompatTextView2;
        this.F = frameLayout;
        this.G = view2;
        this.H = appCompatImageView2;
        this.I = appCompatTextView3;
        this.J = materialButton;
        this.K = progressBar;
        this.L = appCompatTextView4;
        this.M = appCompatImageView3;
        this.N = appCompatTextView5;
    }

    public static C0452pa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0452pa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0452pa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_app, viewGroup, z, obj);
    }
}
