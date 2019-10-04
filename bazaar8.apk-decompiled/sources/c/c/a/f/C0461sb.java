package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.b.d.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;

/* renamed from: c.c.a.f.sb  reason: case insensitive filesystem */
/* compiled from: ItemScreenshotVideoBinding */
public abstract class C0461sb extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final AppCompatImageView C;
    public AppScreenshotItem D;
    public e.a E;

    public C0461sb(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = appCompatImageView2;
    }

    public static C0461sb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0461sb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0461sb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_screenshot_video, viewGroup, z, obj);
    }
}
