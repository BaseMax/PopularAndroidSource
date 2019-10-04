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
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.xa  reason: case insensitive filesystem */
/* compiled from: ItemListHamiAppBinding */
public abstract class C0475xa extends ViewDataBinding {
    public final AppCompatImageView A;
    public final LocalAwareTextView B;
    public final FrameLayout C;
    public final AppCompatImageView D;
    public final CardView E;
    public final AspectRatioImageView F;
    public final MaterialButton G;
    public final ProgressBar H;
    public final AppCompatTextView I;
    public HamiItem J;
    public a K;

    public C0475xa(Object obj, View view, int i2, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, FrameLayout frameLayout, AppCompatImageView appCompatImageView2, CardView cardView, AspectRatioImageView aspectRatioImageView, MaterialButton materialButton, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = localAwareTextView;
        this.C = frameLayout;
        this.D = appCompatImageView2;
        this.E = cardView;
        this.F = aspectRatioImageView;
        this.G = materialButton;
        this.H = progressBar;
        this.I = appCompatTextView;
    }

    public static C0475xa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0475xa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0475xa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_hami_app, viewGroup, z, obj);
    }
}
