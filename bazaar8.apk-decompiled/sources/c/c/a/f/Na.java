package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.n.q.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.malicious.MaliciousAppHeaderItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemMaliciousHeaderBinding */
public abstract class Na extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final MaterialButton C;
    public final LocalAwareTextView D;
    public final LocalAwareTextView E;
    public MaliciousAppHeaderItem F;
    public g G;

    public Na(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, MaterialButton materialButton, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = materialButton;
        this.D = localAwareTextView;
        this.E = localAwareTextView2;
    }

    public static Na a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, b.l.g.a());
    }

    @Deprecated
    public static Na a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Na) ViewDataBinding.a(layoutInflater, (int) R.layout.item_malicious_header, viewGroup, z, obj);
    }
}
