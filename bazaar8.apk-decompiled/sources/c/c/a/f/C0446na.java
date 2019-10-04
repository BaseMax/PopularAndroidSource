package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;

/* renamed from: c.c.a.f.na  reason: case insensitive filesystem */
/* compiled from: ItemGenreBinding */
public abstract class C0446na extends ViewDataBinding {
    public final AppCompatTextView A;
    public GenreItem B;
    public VideoInfoClickListener C;

    public C0446na(Object obj, View view, int i2, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatTextView;
    }

    public static C0446na a(LayoutInflater layoutInflater) {
        return a(layoutInflater, g.a());
    }

    @Deprecated
    public static C0446na a(LayoutInflater layoutInflater, Object obj) {
        return (C0446na) ViewDataBinding.a(layoutInflater, (int) R.layout.item_genre, (ViewGroup) null, false, obj);
    }
}
