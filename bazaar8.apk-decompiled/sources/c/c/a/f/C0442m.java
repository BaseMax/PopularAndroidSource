package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: c.c.a.f.m  reason: case insensitive filesystem */
/* compiled from: FragmentMoreDescriptionDetailBinding */
public abstract class C0442m extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public final RTLImageView D;
    public final NestedScrollView E;
    public final AppCompatTextView F;
    public final Toolbar G;
    public ToolbarInfoModel H;
    public String I;

    public C0442m(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, RTLImageView rTLImageView, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView2, Toolbar toolbar) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
        this.D = rTLImageView;
        this.E = nestedScrollView;
        this.F = appCompatTextView2;
        this.G = toolbar;
    }

    public static C0442m a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0442m a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0442m) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_more_description_detail, viewGroup, z, obj);
    }
}
