package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.widget.CoverForeground;

/* compiled from: ItemVideoDetailVideoInfoBinding */
public abstract class hc extends ViewDataBinding {
    public final RecyclerView A;
    public final CoverForeground B;
    public final AppCompatImageView C;
    public final AppCompatTextView D;
    public final Space E;
    public final AppCompatImageView F;
    public final AppCompatTextView G;
    public CinemaInfoItem H;
    public VideoInfoClickListener I;

    public hc(Object obj, View view, int i2, RecyclerView recyclerView, CoverForeground coverForeground, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, Space space, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView2) {
        super(obj, view, i2);
        this.A = recyclerView;
        this.B = coverForeground;
        this.C = appCompatImageView;
        this.D = appCompatTextView;
        this.E = space;
        this.F = appCompatImageView2;
        this.G = appCompatTextView2;
    }

    public static hc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static hc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (hc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_info, viewGroup, z, obj);
    }
}
