package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoReviewTitleBinding */
public abstract class xc extends ViewDataBinding {
    public final AppCompatTextView A;

    public xc(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static xc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static xc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (xc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_review_title, viewGroup, z, obj);
    }
}
