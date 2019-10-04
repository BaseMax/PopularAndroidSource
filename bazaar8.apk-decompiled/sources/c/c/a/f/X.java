package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* compiled from: ItemArticleBinding */
public abstract class X extends ViewDataBinding {
    public final LocalAwareTextView A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public m D;
    public ArticleItem E;

    public X(Object obj, View view, int i2, LocalAwareTextView localAwareTextView, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView2) {
        super(obj, view, i2);
        this.A = localAwareTextView;
        this.B = appCompatImageView;
        this.C = localAwareTextView2;
    }

    public static X a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static X a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (X) ViewDataBinding.a(layoutInflater, (int) R.layout.item_article, viewGroup, z, obj);
    }
}
