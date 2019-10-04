package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemVideoDetailSeriesSeasonItemBinding */
public abstract class Yb extends ViewDataBinding {
    public final AppCompatTextView A;
    public final MaterialButton B;
    public SeriesSeasonsItem C;
    public m D;

    public Yb(Object obj, View view, int i2, AppCompatTextView appCompatTextView, MaterialButton materialButton) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = materialButton;
    }

    public static Yb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Yb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Yb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_series_season_item, viewGroup, z, obj);
    }
}
