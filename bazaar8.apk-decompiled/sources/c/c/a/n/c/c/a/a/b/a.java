package c.c.a.n.c.c.a.a.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import c.c.a.c.h.d;
import c.c.a.f.zc;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import h.f.b.j;
import h.f.b.k;
import h.g.c;
import h.i.i;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: AppItemVitrinAdapter.kt */
public final class a extends c.c.a.n.c.d.a<PageAppItem> {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ i[] f6303f;

    /* renamed from: g  reason: collision with root package name */
    public final c f6304g = h.g.a.f14577a.a();

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(a.class), "itemWidthSize", "getItemWidthSize()I");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        f6303f = new i[]{mutablePropertyReference1Impl};
    }

    public a() {
        double b2 = (double) d.b();
        Double.isNaN(b2);
        f((int) (b2 * 0.27d));
    }

    /* renamed from: a */
    public void b(n<PageAppItem> nVar, int i2) {
        j.b(nVar, "holder");
        super.b(nVar, i2);
        View view = nVar.f891b;
        j.a((Object) view, "holder.itemView");
        view.getLayoutParams().width = h();
    }

    public n<PageAppItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        zc a2 = zc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemVitrinAppBinding.inf….context), parent, false)");
        return new n<>(a2);
    }

    public final void f(int i2) {
        this.f6304g.a(this, f6303f[0], Integer.valueOf(i2));
    }

    public final int h() {
        return ((Number) this.f6304g.a(this, f6303f[0])).intValue();
    }
}
