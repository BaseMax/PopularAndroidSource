package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: c.c.a.f.w  reason: case insensitive filesystem */
/* compiled from: FragmentScreenshotBinding */
public abstract class C0471w extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final AppCompatImageView C;
    public final RTLImageView D;
    public final ViewPager E;
    public final Toolbar F;
    public ObservableField G;
    public ObservableField H;

    public C0471w(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RTLImageView rTLImageView, ViewPager viewPager, Toolbar toolbar) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = appCompatImageView2;
        this.D = rTLImageView;
        this.E = viewPager;
        this.F = toolbar;
    }

    public static C0471w a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0471w a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0471w) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_screenshot, viewGroup, z, obj);
    }
}
