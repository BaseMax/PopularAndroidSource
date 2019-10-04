package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.b.d.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* compiled from: ItemAppDetailDeveloperInfoBinding */
public abstract class A extends ViewDataBinding {
    public final View A;
    public final LocalAwareTextView B;
    public final AppCompatTextView C;
    public final LocalAwareTextView D;
    public final AppCompatTextView E;
    public final AppCompatTextView F;
    public final LocalAwareTextView G;
    public final AppCompatTextView H;
    public final View I;
    public final View J;
    public final View K;
    public final View L;
    public final View M;
    public f N;
    public DeveloperInfoSectionItem O;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public A(Object obj, View view, int i2, View view2, LocalAwareTextView localAwareTextView, AppCompatTextView appCompatTextView, LocalAwareTextView localAwareTextView2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, LocalAwareTextView localAwareTextView3, AppCompatTextView appCompatTextView4, View view3, View view4, View view5, View view6, View view7) {
        super(obj, view, i2);
        this.A = view2;
        this.B = localAwareTextView;
        this.C = appCompatTextView;
        this.D = localAwareTextView2;
        this.E = appCompatTextView2;
        this.F = appCompatTextView3;
        this.G = localAwareTextView3;
        this.H = appCompatTextView4;
        this.I = view3;
        this.J = view4;
        this.K = view5;
        this.L = view6;
        this.M = view7;
    }

    public static A a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static A a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (A) ViewDataBinding.a(layoutInflater, (int) R.layout.item_app_detail_developer_info, viewGroup, z, obj);
    }
}
