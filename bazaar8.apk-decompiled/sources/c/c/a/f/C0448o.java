package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* renamed from: c.c.a.f.o  reason: case insensitive filesystem */
/* compiled from: FragmentMoreReviewBinding */
public abstract class C0448o extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final LocalAwareTextView D;
    public final RecyclerView E;
    public final FloatingActionButton F;
    public final RTLImageView G;
    public final Toolbar H;
    public Boolean I;
    public ToolbarInfoModel J;

    public C0448o(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2, RecyclerView recyclerView, FloatingActionButton floatingActionButton, RTLImageView rTLImageView, Toolbar toolbar) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = localAwareTextView;
        this.D = localAwareTextView2;
        this.E = recyclerView;
        this.F = floatingActionButton;
        this.G = rTLImageView;
        this.H = toolbar;
    }

    public static C0448o a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    public abstract void a(ToolbarInfoModel toolbarInfoModel);

    @Deprecated
    public static C0448o a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0448o) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_more_review, viewGroup, z, obj);
    }
}
