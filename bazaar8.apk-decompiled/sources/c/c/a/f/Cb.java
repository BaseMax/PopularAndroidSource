package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemTransactionHeaderBinding */
public abstract class Cb extends ViewDataBinding {
    public Cb(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static Cb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Cb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Cb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_transaction_header, viewGroup, z, obj);
    }
}
