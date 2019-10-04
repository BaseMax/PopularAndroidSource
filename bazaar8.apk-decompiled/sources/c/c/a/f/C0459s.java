package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.s  reason: case insensitive filesystem */
/* compiled from: FragmentPostCommentBinding */
public abstract class C0459s extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public final MaterialButton D;
    public final AppCompatEditText E;
    public final AppCompatTextView F;
    public final RatingBar G;
    public final Toolbar H;
    public final AppCompatImageView I;
    public final AppCompatTextView J;
    public Integer K;
    public ToolbarInfoModel L;

    public C0459s(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, MaterialButton materialButton, AppCompatEditText appCompatEditText, AppCompatTextView appCompatTextView2, RatingBar ratingBar, Toolbar toolbar, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView3) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
        this.D = materialButton;
        this.E = appCompatEditText;
        this.F = appCompatTextView2;
        this.G = ratingBar;
        this.H = toolbar;
        this.I = appCompatImageView2;
        this.J = appCompatTextView3;
    }

    public static C0459s a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0459s a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0459s) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_post_comment, viewGroup, z, obj);
    }
}
