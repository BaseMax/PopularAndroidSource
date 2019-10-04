package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;

/* compiled from: ItemVideoDetailVideoScreenshotCoverItemBinding */
public abstract class jc extends ViewDataBinding {
    public final View A;
    public final CardView B;
    public final ConstraintLayout C;
    public final AppCompatImageView D;
    public final AppCompatTextView E;
    public CinemaScreenshotItem F;
    public String G;
    public Boolean H;

    public jc(Object obj, View view, int i2, View view2, CardView cardView, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = view2;
        this.B = cardView;
        this.C = constraintLayout;
        this.D = appCompatImageView;
        this.E = appCompatTextView;
    }

    public static jc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static jc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (jc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_screenshot_cover_item, viewGroup, z, obj);
    }
}
