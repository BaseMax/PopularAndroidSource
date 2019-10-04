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
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemListInlineAppBinding */
public abstract class Ba extends ViewDataBinding {
    public final AppCompatImageView A;
    public final LocalAwareTextView B;
    public final FrameLayout C;
    public final AppCompatImageView D;
    public final CardView E;
    public final FrameLayout F;
    public final MaterialButton G;
    public final ProgressBar H;
    public final AppCompatTextView I;
    public HamiItem J;
    public a K;

    public Ba(Object obj, View view, int i2, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, FrameLayout frameLayout, AppCompatImageView appCompatImageView2, CardView cardView, FrameLayout frameLayout2, MaterialButton materialButton, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = localAwareTextView;
        this.C = frameLayout;
        this.D = appCompatImageView2;
        this.E = cardView;
        this.F = frameLayout2;
        this.G = materialButton;
        this.H = progressBar;
        this.I = appCompatTextView;
    }

    public static Ba a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ba a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ba) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_inline_app, viewGroup, z, obj);
    }
}
