package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;

/* compiled from: ItemMoreArticleBinding */
public abstract class Pa extends ViewDataBinding {
    public final AppCompatTextView A;
    public MoreArticleItem B;
    public m C;

    public Pa(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static Pa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Pa a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Pa) ViewDataBinding.a(layoutInflater, (int) R.layout.item_more_article, viewGroup, z, obj);
    }
}
