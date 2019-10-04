package c.c.a.n.c.c.a.a.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import c.c.a.c.h.d;
import c.c.a.f.Dc;
import c.c.a.f.Fc;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.page.MovieItem;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: MovieItemVitrinAdapter.kt */
public final class c extends a<MovieItem> {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ i[] f6305f;

    /* renamed from: g  reason: collision with root package name */
    public final h.g.c f6306g = h.g.a.f14577a.a();

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(c.class), "itemWidthSize", "getItemWidthSize()I");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        f6305f = new i[]{mutablePropertyReference1Impl};
    }

    public c() {
        double b2 = (double) d.b();
        Double.isNaN(b2);
        f((int) (b2 * 0.27d));
    }

    /* renamed from: a */
    public void b(n<MovieItem> nVar, int i2) {
        j.b(nVar, "holder");
        super.b(nVar, i2);
        View view = nVar.f891b;
        j.a((Object) view, "holder.itemView");
        view.getLayoutParams().width = h();
    }

    public n<MovieItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == CommonItemType.VITRIN_SERIAL.getValue()) {
            Dc a2 = Dc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemVitrinSerialBinding.….context), parent, false)");
            return new n<>(a2);
        } else if (i2 == CommonItemType.VITRIN_VIDEO.getValue()) {
            Fc a3 = Fc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemVitrinVideoBinding.i….context), parent, false)");
            return new n<>(a3);
        } else if (i2 == CommonItemType.VITRIN_EPISODE.ordinal()) {
            Dc a4 = Dc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a4, "ItemVitrinSerialBinding.….context), parent, false)");
            return new n<>(a4);
        } else {
            throw new IllegalStateException("invalid type");
        }
    }

    public final void f(int i2) {
        this.f6306g.a(this, f6305f[0], Integer.valueOf(i2));
    }

    public final int h() {
        return ((Number) this.f6306g.a(this, f6305f[0])).intValue();
    }

    public int b(int i2) {
        MovieItem movieItem = (MovieItem) e().get(i2);
        if (movieItem instanceof MovieItem.VideoItem) {
            return CommonItemType.VITRIN_VIDEO.getValue();
        }
        if (movieItem instanceof MovieItem.SerialItem) {
            return CommonItemType.VITRIN_SERIAL.getValue();
        }
        if (movieItem instanceof MovieItem.EpisodeItem) {
            return CommonItemType.VITRIN_EPISODE.ordinal();
        }
        throw new NoWhenBranchMatchedException();
    }
}
