package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;

/* renamed from: c.c.a.f.ob  reason: case insensitive filesystem */
/* compiled from: ItemReviewMoreBinding */
public abstract class C0450ob extends ViewDataBinding {
    public final AppCompatTextView A;
    public ReviewActionItem B;
    public m C;

    public C0450ob(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static C0450ob a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0450ob a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0450ob) ViewDataBinding.a(layoutInflater, (int) R.layout.item_review_more, viewGroup, z, obj);
    }
}
