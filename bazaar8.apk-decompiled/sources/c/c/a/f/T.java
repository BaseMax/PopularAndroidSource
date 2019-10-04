package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppReviewInfoItem;

/* compiled from: ItemAppdetailRateInfoBinding */
public abstract class T extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final Space C;
    public final AppCompatTextView D;
    public final AppCompatImageView E;
    public final ProgressBar F;
    public final TextView G;
    public final AppCompatImageView H;
    public final ProgressBar I;
    public final TextView J;
    public final AppCompatImageView K;
    public final ProgressBar L;
    public final TextView M;
    public final AppCompatImageView N;
    public final ProgressBar O;
    public final TextView P;
    public final AppCompatImageView Q;
    public final ProgressBar R;
    public final TextView S;
    public final Barrier T;
    public AppReviewInfoItem U;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public T(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, Space space, AppCompatTextView appCompatTextView3, AppCompatImageView appCompatImageView, ProgressBar progressBar, TextView textView, AppCompatImageView appCompatImageView2, ProgressBar progressBar2, TextView textView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar3, TextView textView3, AppCompatImageView appCompatImageView4, ProgressBar progressBar4, TextView textView4, AppCompatImageView appCompatImageView5, ProgressBar progressBar5, TextView textView5, Barrier barrier) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
        this.C = space;
        this.D = appCompatTextView3;
        this.E = appCompatImageView;
        this.F = progressBar;
        this.G = textView;
        this.H = appCompatImageView2;
        this.I = progressBar2;
        this.J = textView2;
        this.K = appCompatImageView3;
        this.L = progressBar3;
        this.M = textView3;
        this.N = appCompatImageView4;
        this.O = progressBar4;
        this.P = textView4;
        this.Q = appCompatImageView5;
        this.R = progressBar5;
        this.S = textView5;
        this.T = barrier;
    }

    public static T a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static T a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (T) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_rate_info, viewGroup, z, obj);
    }
}
