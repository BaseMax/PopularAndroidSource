package c.c.a.n.i;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.C0425gb;
import c.c.a.f.C0432ib;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteItem;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteType;
import h.f.b.j;

/* compiled from: ReleaseNoteAdapter.kt */
public final class g extends a<ReleaseNoteItem> {
    public n<ReleaseNoteItem> c(ViewGroup viewGroup, int i2) {
        ViewDataBinding viewDataBinding;
        j.b(viewGroup, "parent");
        if (i2 == ReleaseNoteType.HEADER.ordinal() || i2 == ReleaseNoteType.INDENT_HEADER.ordinal()) {
            viewDataBinding = C0432ib.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemReleaseNoteHeaderBin….context), parent, false)");
        } else if (i2 == ReleaseNoteType.DESC.ordinal() || i2 == ReleaseNoteType.INDENT_DESC.ordinal()) {
            viewDataBinding = C0425gb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemReleaseNoteDescBindi….context), parent, false)");
        } else {
            throw new IllegalAccessException("invalid type");
        }
        return new n<>(viewDataBinding);
    }
}
