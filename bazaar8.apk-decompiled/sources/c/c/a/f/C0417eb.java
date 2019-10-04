package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.profile.ProfileHeaderItem;

/* renamed from: c.c.a.f.eb  reason: case insensitive filesystem */
/* compiled from: ItemProfileHeaderBinding */
public abstract class C0417eb extends ViewDataBinding {
    public ProfileHeaderItem A;

    public C0417eb(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0417eb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0417eb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0417eb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_profile_header, viewGroup, z, obj);
    }
}
