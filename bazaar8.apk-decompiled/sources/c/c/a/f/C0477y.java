package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.widget.TouchImageView;

/* renamed from: c.c.a.f.y  reason: case insensitive filesystem */
/* compiled from: FragmentScreenshotItemBinding */
public abstract class C0477y extends ViewDataBinding {
    public final TouchImageView A;
    public EntityScreenshotItem B;

    public C0477y(Object obj, View view, int i2, TouchImageView touchImageView) {
        super(obj, view, i2);
        this.A = touchImageView;
    }

    public static C0477y a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0477y a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0477y) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_screenshot_item, viewGroup, z, obj);
    }
}
