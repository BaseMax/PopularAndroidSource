package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.HamiItem;

/* renamed from: c.c.a.f.za  reason: case insensitive filesystem */
/* compiled from: ItemListHamiInlineBinding */
public abstract class C0481za extends ViewDataBinding {
    public final CardView A;
    public final FrameLayout B;
    public HamiItem C;
    public a D;

    public C0481za(Object obj, View view, int i2, CardView cardView, FrameLayout frameLayout) {
        super(obj, view, i2);
        this.A = cardView;
        this.B = frameLayout;
    }

    public static C0481za a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0481za a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0481za) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_hami_inline, viewGroup, z, obj);
    }
}
