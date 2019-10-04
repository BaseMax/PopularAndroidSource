package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;

/* compiled from: ItemVideoDetailVideoTrailerCoverItemBinding */
public abstract class nc extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final AppCompatImageView C;
    public final AppCompatTextView D;
    public TrailerCoverItem E;
    public d.a F;

    public nc(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = appCompatImageView2;
        this.D = appCompatTextView;
    }

    public static nc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static nc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (nc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_trailer_cover_item, viewGroup, z, obj);
    }
}
