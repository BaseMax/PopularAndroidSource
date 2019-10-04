package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;

/* renamed from: c.c.a.f.fa  reason: case insensitive filesystem */
/* compiled from: ItemCinemaEpisodeSeeMoreBinding */
public abstract class C0420fa extends ViewDataBinding {
    public final AppCompatTextView A;
    public SeriesEpisodeSeeMoreItem B;
    public m C;

    public C0420fa(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static C0420fa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0420fa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0420fa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_cinema_episode_see_more, viewGroup, z, obj);
    }
}
