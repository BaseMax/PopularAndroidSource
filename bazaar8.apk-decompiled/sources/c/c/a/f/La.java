package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.google.android.material.button.MaterialButton;

/* compiled from: ItemLoadMoreBinding */
public abstract class La extends ViewDataBinding {
    public final TextView A;
    public final SpinKitView B;
    public final MaterialButton C;

    public La(Object obj, View view, int i2, TextView textView, SpinKitView spinKitView, MaterialButton materialButton) {
        super(obj, view, i2);
        this.A = textView;
        this.B = spinKitView;
        this.C = materialButton;
    }

    public static La a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static La a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (La) ViewDataBinding.a(layoutInflater, (int) R.layout.item_load_more, viewGroup, z, obj);
    }
}
