package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.VideoReviewActionItem;

/* compiled from: ItemVideoReviewMoreBinding */
public abstract class vc extends ViewDataBinding {
    public final AppCompatTextView A;
    public VideoReviewActionItem B;
    public m C;

    public vc(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static vc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static vc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (vc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_review_more, viewGroup, z, obj);
    }
}
