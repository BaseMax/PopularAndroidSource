package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemArticleTitleBinding */
public abstract class Z extends ViewDataBinding {
    public final AppCompatTextView A;

    public Z(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static Z a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Z a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Z) ViewDataBinding.a(layoutInflater, (int) R.layout.item_article_title, viewGroup, z, obj);
    }
}
