package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.A.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemUpgradableHeaderBinding */
public abstract class Eb extends ViewDataBinding {
    public final MaterialButton A;
    public UpgradableAppsHeaderItem B;
    public a C;

    public Eb(Object obj, View view, int i2, MaterialButton materialButton) {
        super(obj, view, i2);
        this.A = materialButton;
    }

    public static Eb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Eb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Eb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_upgradable_header, viewGroup, z, obj);
    }
}
