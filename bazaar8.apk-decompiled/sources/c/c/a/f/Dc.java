package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.core.widget.AspectRatioRoundImageView;
import com.farsitel.bazaar.widget.AutosizingTextView;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* compiled from: ItemVitrinSerialBinding */
public abstract class Dc extends ViewDataBinding {
    public final LinearLayout A;
    public final AspectRatioRoundImageView B;
    public final AppCompatTextView C;
    public final AutosizingTextView D;
    public final LocalAwareTextView E;
    public MovieItem.SerialItem F;
    public m G;

    public Dc(Object obj, View view, int i2, LinearLayout linearLayout, AspectRatioRoundImageView aspectRatioRoundImageView, AppCompatTextView appCompatTextView, AutosizingTextView autosizingTextView, LocalAwareTextView localAwareTextView) {
        super(obj, view, i2);
        this.A = linearLayout;
        this.B = aspectRatioRoundImageView;
        this.C = appCompatTextView;
        this.D = autosizingTextView;
        this.E = localAwareTextView;
    }

    public static Dc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Dc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Dc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_vitrin_serial, viewGroup, z, obj);
    }
}
