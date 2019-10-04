package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;

/* compiled from: ItemVideoDetailVideoScreenshotsBinding */
public abstract class lc extends ViewDataBinding {
    public final RecyclerView A;
    public ScreenshotsItem B;

    public lc(Object obj, View view, int i2, RecyclerView recyclerView) {
        super(obj, view, i2);
        this.A = recyclerView;
    }

    public static lc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static lc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (lc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_screenshots, viewGroup, z, obj);
    }
}
