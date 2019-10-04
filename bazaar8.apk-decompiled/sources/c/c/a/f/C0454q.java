package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import androidx.viewpager.widget.ViewPager;
import b.l.g;
import c.c.a.n.r.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.user.User;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;

/* renamed from: c.c.a.f.q  reason: case insensitive filesystem */
/* compiled from: FragmentMyBazaarBinding */
public abstract class C0454q extends ViewDataBinding {
    public final Barrier A;
    public final View B;
    public final View C;
    public final MaterialButton D;
    public final MaterialButton E;
    public final LocalAwareTextView F;
    public final AppCompatImageView G;
    public final TabLayout H;
    public final View I;
    public final AppCompatImageView J;
    public final AppCompatImageView K;
    public final AppCompatImageView L;
    public final ViewPager M;
    public LiveData<User> N;
    public p O;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0454q(Object obj, View view, int i2, Barrier barrier, View view2, View view3, MaterialButton materialButton, MaterialButton materialButton2, LocalAwareTextView localAwareTextView, AppCompatImageView appCompatImageView, TabLayout tabLayout, View view4, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ViewPager viewPager) {
        super(obj, view, i2);
        this.A = barrier;
        this.B = view2;
        this.C = view3;
        this.D = materialButton;
        this.E = materialButton2;
        this.F = localAwareTextView;
        this.G = appCompatImageView;
        this.H = tabLayout;
        this.I = view4;
        this.J = appCompatImageView2;
        this.K = appCompatImageView3;
        this.L = appCompatImageView4;
        this.M = viewPager;
    }

    public static C0454q a(LayoutInflater layoutInflater) {
        return a(layoutInflater, g.a());
    }

    public abstract void a(LiveData<User> liveData);

    public abstract void a(p pVar);

    @Deprecated
    public static C0454q a(LayoutInflater layoutInflater, Object obj) {
        return (C0454q) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_my_bazaar, (ViewGroup) null, false, obj);
    }
}
