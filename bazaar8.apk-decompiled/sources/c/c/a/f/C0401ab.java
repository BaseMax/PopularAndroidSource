package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.profile.ProfileItem;
import com.farsitel.bazaar.widget.RTLImageView;

/* renamed from: c.c.a.f.ab  reason: case insensitive filesystem */
/* compiled from: ItemProfileBinding */
public abstract class C0401ab extends ViewDataBinding {
    public final RTLImageView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public ProfileItem D;
    public m E;

    public C0401ab(Object obj, View view, int i2, RTLImageView rTLImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i2);
        this.A = rTLImageView;
        this.B = appCompatTextView;
        this.C = appCompatTextView2;
    }

    public static C0401ab a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0401ab a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0401ab) ViewDataBinding.a(layoutInflater, (int) R.layout.item_profile, viewGroup, z, obj);
    }
}
