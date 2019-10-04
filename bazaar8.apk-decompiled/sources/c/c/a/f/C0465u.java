package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.u  reason: case insensitive filesystem */
/* compiled from: FragmentReportAppBinding */
public abstract class C0465u extends ViewDataBinding {
    public final AppBarLayout A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public final MaterialButton D;
    public final AppCompatEditText E;
    public final NestedScrollView F;
    public final AppCompatRadioButton G;
    public final AppCompatRadioButton H;
    public final AppCompatTextView I;
    public final AppCompatRadioButton J;
    public final ConstraintLayout K;
    public final AppCompatTextView L;
    public final RadioGroup M;
    public final Toolbar N;
    public final AppCompatImageView O;
    public final AppCompatRadioButton P;
    public final AppCompatRadioButton Q;
    public ToolbarInfoModel R;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0465u(Object obj, View view, int i2, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, MaterialButton materialButton, AppCompatEditText appCompatEditText, NestedScrollView nestedScrollView, AppCompatRadioButton appCompatRadioButton, AppCompatRadioButton appCompatRadioButton2, AppCompatTextView appCompatTextView2, AppCompatRadioButton appCompatRadioButton3, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView3, RadioGroup radioGroup, Toolbar toolbar, AppCompatImageView appCompatImageView2, AppCompatRadioButton appCompatRadioButton4, AppCompatRadioButton appCompatRadioButton5) {
        super(obj, view, i2);
        this.A = appBarLayout;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
        this.D = materialButton;
        this.E = appCompatEditText;
        this.F = nestedScrollView;
        this.G = appCompatRadioButton;
        this.H = appCompatRadioButton2;
        this.I = appCompatTextView2;
        this.J = appCompatRadioButton3;
        this.K = constraintLayout;
        this.L = appCompatTextView3;
        this.M = radioGroup;
        this.N = toolbar;
        this.O = appCompatImageView2;
        this.P = appCompatRadioButton4;
        this.Q = appCompatRadioButton5;
    }

    public static C0465u a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0465u a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0465u) ViewDataBinding.a(layoutInflater, (int) R.layout.fragment_report_app, viewGroup, z, obj);
    }
}
