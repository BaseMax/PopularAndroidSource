package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.widget.CoverForeground;

/* renamed from: c.c.a.f.la  reason: case insensitive filesystem */
/* compiled from: ItemEditorChoiceHeaderBinding */
public abstract class C0440la extends ViewDataBinding {
    public final Space A;
    public final AppCompatImageView B;
    public final AppCompatTextView C;
    public final CoverForeground D;
    public final AppCompatImageView E;
    public ListItem.EditorChoiceHeader F;

    public C0440la(Object obj, View view, int i2, Space space, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, CoverForeground coverForeground, AppCompatImageView appCompatImageView2) {
        super(obj, view, i2);
        this.A = space;
        this.B = appCompatImageView;
        this.C = appCompatTextView;
        this.D = coverForeground;
        this.E = appCompatImageView2;
    }

    public static C0440la a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0440la a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0440la) ViewDataBinding.a(layoutInflater, (int) R.layout.item_editor_choice_header, viewGroup, z, obj);
    }
}
