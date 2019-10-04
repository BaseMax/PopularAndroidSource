package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ReportItem;

/* compiled from: ItemAppdetailReportBinding */
public abstract class V extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AppCompatTextView B;
    public ReportItem C;
    public m D;

    public V(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = appCompatTextView;
    }

    public static V a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static V a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (V) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_report, viewGroup, z, obj);
    }
}
