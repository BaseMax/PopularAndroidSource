package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemVideoDetailOtherInfoTitleBinding */
public abstract class Sb extends ViewDataBinding {
    public final AppCompatTextView A;

    public Sb(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static Sb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Sb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Sb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_other_info_title, viewGroup, z, obj);
    }
}
