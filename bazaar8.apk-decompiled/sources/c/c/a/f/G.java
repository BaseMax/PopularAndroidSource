package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ChangeLogItem;

/* compiled from: ItemAppdetailChangelogBinding */
public abstract class G extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public m D;
    public ChangeLogItem E;

    public G(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
        this.C = appCompatTextView3;
    }

    public static G a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static G a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (G) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_changelog, viewGroup, z, obj);
    }
}
