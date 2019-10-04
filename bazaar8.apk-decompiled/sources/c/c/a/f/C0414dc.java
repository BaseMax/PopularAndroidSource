package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaBigScreenshotItem;

/* renamed from: c.c.a.f.dc  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoBigScreenshotCoverItemBinding */
public abstract class C0414dc extends ViewDataBinding {
    public final CardView A;
    public final ConstraintLayout B;
    public final AppCompatImageView C;
    public CinemaBigScreenshotItem D;

    public C0414dc(Object obj, View view, int i2, CardView cardView, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView) {
        super(obj, view, i2);
        this.A = cardView;
        this.B = constraintLayout;
        this.C = appCompatImageView;
    }

    public static C0414dc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0414dc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0414dc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_big_screenshot_cover_item, viewGroup, z, obj);
    }
}
