package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a.a.k;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* compiled from: ItemListVideoBinding */
public abstract class Ja extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final LocalAwareTextView D;
    public final LocalAwareTextView E;
    public final LoadingButton F;
    public ListItem.Video G;
    public Integer H;
    public PageViewConfigItem I;
    public PageViewConfigItem J;
    public k K;

    public Ja(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2, LocalAwareTextView localAwareTextView3, LoadingButton loadingButton) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = localAwareTextView;
        this.D = localAwareTextView2;
        this.E = localAwareTextView3;
        this.F = loadingButton;
    }

    public static Ja a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ja a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ja) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_video, viewGroup, z, obj);
    }
}
