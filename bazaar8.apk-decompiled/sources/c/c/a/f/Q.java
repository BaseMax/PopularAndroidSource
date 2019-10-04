package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.b.d.i;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppMyRateItem;

/* compiled from: ItemAppdetailMyRateBinding */
public abstract class Q extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final RatingBar C;
    public AppMyRateItem D;
    public m E;
    public i F;

    public Q(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RatingBar ratingBar) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
        this.C = ratingBar;
    }

    public static Q a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Q a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Q) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_my_rate, viewGroup, z, obj);
    }
}
