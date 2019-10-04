package c.c.a.f;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.e  reason: case insensitive filesystem */
/* compiled from: AlertThirdpartReviewBinding */
public abstract class C0415e extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AppCompatTextView B;
    public final View C;
    public final AppCompatImageView D;
    public final MaterialButton E;
    public final AppCompatImageView F;
    public final AppCompatEditText G;
    public final AppCompatTextView H;
    public final RatingBar I;
    public final AppCompatTextView J;
    public final AppCompatTextView K;
    public String L;
    public String M;
    public Drawable N;
    public String O;

    public C0415e(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, View view2, AppCompatImageView appCompatImageView2, MaterialButton materialButton, AppCompatImageView appCompatImageView3, AppCompatEditText appCompatEditText, AppCompatTextView appCompatTextView2, RatingBar ratingBar, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = appCompatTextView;
        this.C = view2;
        this.D = appCompatImageView2;
        this.E = materialButton;
        this.F = appCompatImageView3;
        this.G = appCompatEditText;
        this.H = appCompatTextView2;
        this.I = ratingBar;
        this.J = appCompatTextView3;
        this.K = appCompatTextView4;
    }

    public static C0415e a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    public abstract void a(Drawable drawable);

    public abstract void a(String str);

    public abstract void b(String str);

    public abstract void c(String str);

    @Deprecated
    public static C0415e a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0415e) ViewDataBinding.a(layoutInflater, (int) R.layout.alert_thirdpart_review, viewGroup, z, obj);
    }
}
