package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.EditorChoiceItem;

/* compiled from: ItemAppdetailEditorChoiseBinding */
public abstract class M extends ViewDataBinding {
    public EditorChoiceItem A;
    public m B;

    public M(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static M a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static M a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (M) ViewDataBinding.a(layoutInflater, (int) R.layout.item_appdetail_editor_choise, viewGroup, z, obj);
    }
}
