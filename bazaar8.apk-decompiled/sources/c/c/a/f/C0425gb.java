package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteDescriptionItem;

/* renamed from: c.c.a.f.gb  reason: case insensitive filesystem */
/* compiled from: ItemReleaseNoteDescBinding */
public abstract class C0425gb extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatImageView B;
    public ReleaseNoteDescriptionItem C;

    public C0425gb(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatImageView;
    }

    public static C0425gb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0425gb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0425gb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_release_note_desc, viewGroup, z, obj);
    }
}
