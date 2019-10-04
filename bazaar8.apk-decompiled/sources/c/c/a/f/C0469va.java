package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* renamed from: c.c.a.f.va  reason: case insensitive filesystem */
/* compiled from: ItemListEpisodeBinding */
public abstract class C0469va extends ViewDataBinding {
    public final View A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final LocalAwareTextView D;
    public final LocalAwareTextView E;
    public final LoadingButton F;
    public ListItem.Episode G;
    public ListItem H;
    public Integer I;
    public PageViewConfigItem J;
    public PageViewConfigItem K;
    public i L;

    public C0469va(Object obj, View view, int i2, View view2, AppCompatImageView appCompatImageView, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2, LocalAwareTextView localAwareTextView3, LoadingButton loadingButton) {
        super(obj, view, i2);
        this.A = view2;
        this.B = appCompatImageView;
        this.C = localAwareTextView;
        this.D = localAwareTextView2;
        this.E = localAwareTextView3;
        this.F = loadingButton;
    }

    public static C0469va a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0469va a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0469va) ViewDataBinding.a(layoutInflater, (int) R.layout.item_list_episode, viewGroup, z, obj);
    }
}
