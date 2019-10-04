package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.g  reason: case insensitive filesystem */
/* compiled from: DialogForceUpdateBinding */
public abstract class C0423g extends ViewDataBinding {
    public final Group A;
    public final ProgressBar B;
    public final TextView C;
    public final AppCompatImageView D;
    public final AppCompatTextView E;
    public final MaterialButton F;
    public final AppCompatImageView G;
    public final View H;

    public C0423g(Object obj, View view, int i2, Group group, ProgressBar progressBar, TextView textView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, MaterialButton materialButton, AppCompatImageView appCompatImageView2, View view2) {
        super(obj, view, i2);
        this.A = group;
        this.B = progressBar;
        this.C = textView;
        this.D = appCompatImageView;
        this.E = appCompatTextView;
        this.F = materialButton;
        this.G = appCompatImageView2;
        this.H = view2;
    }

    public static C0423g a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0423g a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0423g) ViewDataBinding.a(layoutInflater, (int) R.layout.dialog_force_update, viewGroup, z, obj);
    }
}
