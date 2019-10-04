package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.NoDiscountTextView;

/* renamed from: c.c.a.f.ha  reason: case insensitive filesystem */
/* compiled from: ItemCinemaSeasonEpisodeBinding */
public abstract class C0428ha extends ViewDataBinding {
    public final Barrier A;
    public final View B;
    public final AppCompatTextView C;
    public final NoDiscountTextView D;
    public final AppCompatImageView E;
    public final LoadingButton F;
    public ListItem.Episode G;
    public i H;

    public C0428ha(Object obj, View view, int i2, Barrier barrier, View view2, AppCompatTextView appCompatTextView, NoDiscountTextView noDiscountTextView, AppCompatImageView appCompatImageView, LoadingButton loadingButton) {
        super(obj, view, i2);
        this.A = barrier;
        this.B = view2;
        this.C = appCompatTextView;
        this.D = noDiscountTextView;
        this.E = appCompatImageView;
        this.F = loadingButton;
    }

    public static C0428ha a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0428ha a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0428ha) ViewDataBinding.a(layoutInflater, (int) R.layout.item_cinema_season_episode, viewGroup, z, obj);
    }
}
