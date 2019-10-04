package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.profile.ProfileCreditItem;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.cb  reason: case insensitive filesystem */
/* compiled from: ItemProfileCreditBinding */
public abstract class C0409cb extends ViewDataBinding {
    public final AppCompatTextView A;
    public final MaterialButton B;
    public final MaterialButton C;
    public final AppCompatTextView D;
    public ProfileCreditItem E;
    public m F;

    public C0409cb(Object obj, View view, int i2, AppCompatTextView appCompatTextView, MaterialButton materialButton, MaterialButton materialButton2, AppCompatTextView appCompatTextView2) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = materialButton;
        this.C = materialButton2;
        this.D = appCompatTextView2;
    }

    public static C0409cb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0409cb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0409cb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_profile_credit, viewGroup, z, obj);
    }
}
