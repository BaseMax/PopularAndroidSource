package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.TextTitleItem;

/* compiled from: ItemVideoDetailOtherInfoItemBinding */
public abstract class Qb extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public TextTitleItem C;

    public Qb(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
    }

    public static Qb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Qb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Qb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_other_info_item, viewGroup, z, obj);
    }
}
