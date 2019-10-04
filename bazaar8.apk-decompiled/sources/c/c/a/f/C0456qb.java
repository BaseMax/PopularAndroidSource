package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.b.d.a.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;

/* renamed from: c.c.a.f.qb  reason: case insensitive filesystem */
/* compiled from: ItemScreenshotImageBinding */
public abstract class C0456qb extends ViewDataBinding {
    public final AppCompatImageView A;
    public final CardView B;
    public Integer C;
    public AppScreenshotItem D;
    public c.a E;

    public C0456qb(Object obj, View view, int i2, AppCompatImageView appCompatImageView, CardView cardView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = cardView;
    }

    public static C0456qb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0456qb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0456qb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_screenshot_image, viewGroup, z, obj);
    }
}
