package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteHeaderItem;

/* renamed from: c.c.a.f.ib  reason: case insensitive filesystem */
/* compiled from: ItemReleaseNoteHeaderBinding */
public abstract class C0432ib extends ViewDataBinding {
    public ReleaseNoteHeaderItem A;

    public C0432ib(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static C0432ib a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0432ib a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0432ib) ViewDataBinding.a(layoutInflater, (int) R.layout.item_release_note_header, viewGroup, z, obj);
    }
}
