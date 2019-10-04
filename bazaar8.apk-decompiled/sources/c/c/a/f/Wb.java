package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;

/* compiled from: ItemVideoDetailSeasonListItemBinding */
public abstract class Wb extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public SeriesSeason D;
    public Integer E;
    public m F;

    public Wb(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
    }

    public static Wb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Wb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Wb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_season_list_item, viewGroup, z, obj);
    }
}
