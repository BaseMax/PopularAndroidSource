package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.EpisodeItemClickListener;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeItem;
import com.farsitel.bazaar.widget.LoadingButton;

/* renamed from: c.c.a.f.da  reason: case insensitive filesystem */
/* compiled from: ItemCinemaEpisodeBinding */
public abstract class C0412da extends ViewDataBinding {
    public final LoadingButton A;
    public final AppCompatTextView B;
    public SeriesEpisodeItem C;
    public EpisodeItemClickListener D;

    public C0412da(Object obj, View view, int i2, LoadingButton loadingButton, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = loadingButton;
        this.B = appCompatTextView;
    }

    public static C0412da a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0412da a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0412da) ViewDataBinding.a(layoutInflater, (int) R.layout.item_cinema_episode, viewGroup, z, obj);
    }
}
