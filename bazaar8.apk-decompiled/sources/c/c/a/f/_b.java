package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoDetailSeriesSingleSeasonItemBinding */
public abstract class _b extends ViewDataBinding {
    public final AppCompatTextView A;

    public _b(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static _b a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static _b a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (_b) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_series_single_season_item, viewGroup, z, obj);
    }
}
