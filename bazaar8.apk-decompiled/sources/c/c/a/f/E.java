package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.b.d.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.core.widget.VectorDrawableTextView;
import com.farsitel.bazaar.widget.CoverForeground;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemAppdetailAppInfoBinding */
public abstract class E extends ViewDataBinding {
    public final View A;
    public final Group B;
    public final ProgressBar C;
    public final LocalAwareTextView D;
    public final Space E;
    public final View F;
    public final AppCompatTextView G;
    public final AppCompatTextView H;
    public final Space I;
    public final AppCompatTextView J;
    public final AppCompatTextView K;
    public final View L;
    public final AppCompatTextView M;
    public final VectorDrawableTextView N;
    public final View O;
    public final AppCompatTextView P;
    public final AppCompatTextView Q;
    public final Space R;
    public final Barrier S;
    public final MaterialButton T;
    public final MaterialButton U;
    public final MaterialButton V;
    public final MaterialButton W;
    public final Guideline X;
    public final View Y;
    public final AppCompatImageView Z;
    public final AppCompatImageView aa;
    public final AppCompatTextView ba;
    public final AppCompatImageView ca;
    public final View da;
    public final AppCompatImageView ea;
    public final CoverForeground fa;
    public final Guideline ga;
    public final AppCompatTextView ha;
    public final AppCompatTextView ia;
    public final VectorDrawableTextView ja;
    public AppInfoItem ka;
    public a la;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public E(Object obj, View view, int i2, View view2, Group group, ProgressBar progressBar, LocalAwareTextView localAwareTextView, Space space, View view3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, Space space2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view4, AppCompatTextView appCompatTextView5, VectorDrawableTextView vectorDrawableTextView, View view5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, Space space3, Barrier barrier, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, Guideline guideline, View view6, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView8, AppCompatImageView appCompatImageView3, View view7, AppCompatImageView appCompatImageView4, CoverForeground coverForeground, Guideline guideline2, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, VectorDrawableTextView vectorDrawableTextView2) {
        super(obj, view, i2);
        this.A = view2;
        this.B = group;
        this.C = progressBar;
        this.D = localAwareTextView;
        this.E = space;
        this.F = view3;
        this.G = appCompatTextView;
        this.H = appCompatTextView2;
        this.I = space2;
        this.J = appCompatTextView3;
        this.K = appCompatTextView4;
        this.L = view4;
        this.M = appCompatTextView5;
        this.N = vectorDrawableTextView;
        this.O = view5;
        this.P = appCompatTextView6;
        this.Q = appCompatTextView7;
        this.R = space3;
        this.S = barrier;
        this.T = materialButton;
        this.U = materialButton2;
        this.V = materialButton3;
        this.W = materialButton4;
        this.X = guideline;
        this.Y = view6;
        this.Z = appCompatImageView;
        this.aa = appCompatImageView2;
        this.ba = appCompatTextView8;
        this.ca = appCompatImageView3;
        this.da = view7;
        this.ea = appCompatImageView4;
        this.fa = coverForeground;
        this.ga = guideline2;
        this.ha = appCompatTextView9;
        this.ia = appCompatTextView10;
        this.ja = vectorDrawableTextView2;
    }

    public static E a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static E a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (E) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_app_info, viewGroup, z, obj);
    }
}
