package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaDescriptionItem;

/* renamed from: c.c.a.f.fc  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoDescriptionBinding */
public abstract class C0422fc extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AppCompatTextView B;
    public CinemaDescriptionItem C;
    public m D;

    public C0422fc(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = appCompatTextView;
    }

    public static C0422fc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0422fc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0422fc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_detail_video_description, viewGroup, z, obj);
    }
}
