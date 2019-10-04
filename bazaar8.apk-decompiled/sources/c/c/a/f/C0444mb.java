package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import c.c.a.n.u.b;
import c.c.a.n.u.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* renamed from: c.c.a.f.mb  reason: case insensitive filesystem */
/* compiled from: ItemReviewBinding */
public abstract class C0444mb extends ViewDataBinding {
    public final Space A;
    public final Space B;
    public final Barrier C;
    public final View D;
    public final LocalAwareTextView E;
    public final LocalAwareTextView F;
    public final AppCompatImageView G;
    public final RatingBar H;
    public final Barrier I;
    public final View J;
    public final View K;
    public final View L;
    public final Group M;
    public final AppCompatTextView N;
    public final AppCompatTextView O;
    public final AppCompatImageView P;
    public final AppCompatTextView Q;
    public final AppCompatTextView R;
    public final AppCompatImageView S;
    public final AppCompatTextView T;
    public final LocalAwareTextView U;
    public final AppCompatImageView V;
    public final AppCompatTextView W;
    public final AppCompatImageView X;
    public final LocalAwareTextView Y;
    public final AppCompatImageView Z;
    public final AppCompatTextView aa;
    public ReviewItem ba;
    public c ca;
    public b da;
    public m ea;
    public Integer fa;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0444mb(Object obj, View view, int i2, Space space, Space space2, Barrier barrier, View view2, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2, AppCompatImageView appCompatImageView, RatingBar ratingBar, Barrier barrier2, View view3, View view4, View view5, Group group, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView5, LocalAwareTextView localAwareTextView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView6, AppCompatImageView appCompatImageView5, LocalAwareTextView localAwareTextView4, AppCompatImageView appCompatImageView6, AppCompatTextView appCompatTextView7) {
        super(obj, view, i2);
        this.A = space;
        this.B = space2;
        this.C = barrier;
        this.D = view2;
        this.E = localAwareTextView;
        this.F = localAwareTextView2;
        this.G = appCompatImageView;
        this.H = ratingBar;
        this.I = barrier2;
        this.J = view3;
        this.K = view4;
        this.L = view5;
        this.M = group;
        this.N = appCompatTextView;
        this.O = appCompatTextView2;
        this.P = appCompatImageView2;
        this.Q = appCompatTextView3;
        this.R = appCompatTextView4;
        this.S = appCompatImageView3;
        this.T = appCompatTextView5;
        this.U = localAwareTextView3;
        this.V = appCompatImageView4;
        this.W = appCompatTextView6;
        this.X = appCompatImageView5;
        this.Y = localAwareTextView4;
        this.Z = appCompatImageView6;
        this.aa = appCompatTextView7;
    }

    public static C0444mb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0444mb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0444mb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_review, viewGroup, z, obj);
    }
}
