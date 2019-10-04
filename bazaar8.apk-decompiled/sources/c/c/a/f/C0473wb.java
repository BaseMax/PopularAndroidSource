package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.w.a;
import c.c.a.n.w.o;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.RTLImageView;

/* renamed from: c.c.a.f.wb  reason: case insensitive filesystem */
/* compiled from: ItemSearchHistoryBinding */
public abstract class C0473wb extends ViewDataBinding {
    public final LocalAwareTextView A;
    public final AppCompatImageView B;
    public final RTLImageView C;
    public final View D;
    public a E;
    public o F;
    public Integer G;
    public SearchHistoryItem H;
    public Boolean I;

    public C0473wb(Object obj, View view, int i2, LocalAwareTextView localAwareTextView, AppCompatImageView appCompatImageView, RTLImageView rTLImageView, View view2) {
        super(obj, view, i2);
        this.A = localAwareTextView;
        this.B = appCompatImageView;
        this.C = rTLImageView;
        this.D = view2;
    }

    public static C0473wb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0473wb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0473wb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_search_history, viewGroup, z, obj);
    }
}
