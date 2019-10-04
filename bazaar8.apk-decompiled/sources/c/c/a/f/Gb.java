package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.VideoAddReviewItem;

/* compiled from: ItemVideoAddReviewBinding */
public abstract class Gb extends ViewDataBinding {
    public final AppCompatImageView A;
    public VideoAddReviewItem B;
    public m C;

    public Gb(Object obj, View view, int i2, AppCompatImageView appCompatImageView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
    }

    public static Gb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Gb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Gb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_add_review, viewGroup, z, obj);
    }
}
