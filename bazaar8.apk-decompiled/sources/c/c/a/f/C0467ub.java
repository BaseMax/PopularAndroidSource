package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.RTLImageView;

/* renamed from: c.c.a.f.ub  reason: case insensitive filesystem */
/* compiled from: ItemScrollableBinding */
public abstract class C0467ub extends ViewDataBinding {
    public final AppCompatTextView A;
    public final RTLImageView B;
    public final LocalAwareTextView C;
    public final RecyclerView D;
    public final LinearLayout E;
    public o.a F;
    public AbstractSectionRowData G;

    public C0467ub(Object obj, View view, int i2, AppCompatTextView appCompatTextView, RTLImageView rTLImageView, LocalAwareTextView localAwareTextView, RecyclerView recyclerView, LinearLayout linearLayout) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = rTLImageView;
        this.C = localAwareTextView;
        this.D = recyclerView;
        this.E = linearLayout;
    }

    public static C0467ub a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0467ub a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0467ub) ViewDataBinding.a(layoutInflater, (int) R.layout.item_scrollable, viewGroup, z, obj);
    }
}
