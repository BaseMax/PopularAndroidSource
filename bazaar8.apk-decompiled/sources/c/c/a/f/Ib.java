package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CrewItem;

/* compiled from: ItemVideoDetailCrewItemBinding */
public abstract class Ib extends ViewDataBinding {
    public final AppCompatTextView A;
    public final FrameLayout B;
    public CrewItem C;

    public Ib(Object obj, View view, int i2, AppCompatTextView appCompatTextView, FrameLayout frameLayout) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = frameLayout;
    }

    public static Ib a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ib a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ib) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_crew_item, viewGroup, z, obj);
    }
}
