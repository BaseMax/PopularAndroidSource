package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: c.c.a.f.i  reason: case insensitive filesystem */
/* compiled from: FragmentMoreArticleBinding */
public abstract class C0430i extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final RecyclerView E;
    public final Toolbar F;
    public final RTLImageView G;
    public ToolbarInfoModel H;

    public C0430i(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RecyclerView recyclerView, Toolbar toolbar, RTLImageView rTLImageView) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
        this.D = appCompatTextView2;
        this.E = recyclerView;
        this.F = toolbar;
        this.G = rTLImageView;
    }

    public static C0430i a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0430i a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0430i) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_more_article, viewGroup, z, obj);
    }
}
