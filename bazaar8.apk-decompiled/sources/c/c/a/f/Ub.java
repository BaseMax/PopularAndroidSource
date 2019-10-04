package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoDetailProgressBinding */
public abstract class Ub extends ViewDataBinding {
    public Ub(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static Ub a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ub a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ub) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_progress, viewGroup, z, obj);
    }
}
