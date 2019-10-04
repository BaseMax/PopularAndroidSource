package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoDetailCrewsBinding */
public abstract class Ob extends ViewDataBinding {
    public final RecyclerView A;
    public final AppCompatTextView B;

    public Ob(Object obj, View view, int i2, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = recyclerView;
        this.B = appCompatTextView;
    }

    public static Ob a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ob a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ob) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_crews, viewGroup, z, obj);
    }
}
