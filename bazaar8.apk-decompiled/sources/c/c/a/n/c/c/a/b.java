package c.c.a.n.c.c.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.Ba;
import c.c.a.f.C0452pa;
import c.c.a.f.C0457ra;
import c.c.a.f.C0463ta;
import c.c.a.f.C0469va;
import c.c.a.f.C0475xa;
import c.c.a.f.C0481za;
import c.c.a.f.Da;
import c.c.a.f.Fa;
import c.c.a.f.Ha;
import c.c.a.f.Ja;
import c.c.a.f.Xa;
import c.c.a.n.c.c.a.a.a.c;
import c.c.a.n.c.c.a.a.a.e;
import c.c.a.n.c.c.a.a.a.g;
import c.c.a.n.c.c.a.a.a.h;
import c.c.a.n.c.c.a.a.a.i;
import c.c.a.n.c.c.a.a.a.j;
import c.c.a.n.c.c.a.a.a.k;
import c.c.a.n.c.c.a.a.a.l;
import c.c.a.n.c.c.a.a.a.m;
import c.c.a.n.c.c.a.a.b.d;
import c.c.a.n.c.c.a.a.b.f;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageItemType;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;

/* compiled from: PageAdapter.kt */
public class b extends a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public PageViewConfigItem f6308f;

    /* renamed from: g  reason: collision with root package name */
    public final RecyclerView.o f6309g = new RecyclerView.o();

    /* renamed from: h  reason: collision with root package name */
    public final o.a f6310h;

    /* renamed from: i  reason: collision with root package name */
    public final o.a f6311i;

    /* renamed from: j  reason: collision with root package name */
    public final o.a f6312j;

    /* renamed from: k  reason: collision with root package name */
    public final a<HamiItem> f6313k;

    /* renamed from: l  reason: collision with root package name */
    public final a<ListItem> f6314l;
    public final k m;
    public final j n;
    public final i o;

    public b(o.a aVar, o.a aVar2, o.a aVar3, a<HamiItem> aVar4, a<ListItem> aVar5, k kVar, j jVar, i iVar) {
        h.f.b.j.b(aVar, "onAppScrollListener");
        h.f.b.j.b(aVar2, "onVideoScrollListener");
        h.f.b.j.b(aVar3, "onPromoScrollListener");
        h.f.b.j.b(aVar4, "onPageHamiCommunicator");
        h.f.b.j.b(aVar5, "onPageListAppCommunicator");
        h.f.b.j.b(kVar, "onVideoListViewHolderCommunicator");
        h.f.b.j.b(jVar, "onSerialViewHolderCommunicator");
        h.f.b.j.b(iVar, "onEpisodeViewHolderCommunicator");
        this.f6310h = aVar;
        this.f6311i = aVar2;
        this.f6312j = aVar3;
        this.f6313k = aVar4;
        this.f6314l = aVar5;
        this.m = kVar;
        this.n = jVar;
        this.o = iVar;
    }

    public final void a(PageViewConfigItem pageViewConfigItem) {
        this.f6308f = pageViewConfigItem;
    }

    /* renamed from: b */
    public void c(n<RecyclerData> nVar) {
        h.f.b.j.b(nVar, "holder");
        super.c(nVar);
        if (nVar instanceof o) {
            ((o) nVar).G();
        }
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        h.f.b.j.b(viewGroup, "parent");
        if (i2 == CommonItemType.VITRIN_APP.getValue()) {
            return new c.c.a.n.c.c.a.a.b.b(viewGroup, this.f6309g, this.f6308f, this.f6310h);
        }
        if (i2 == CommonItemType.VITRIN_VIDEO.getValue() || i2 == CommonItemType.VITRIN_SERIAL.getValue() || i2 == CommonItemType.VITRIN_EPISODE.getValue()) {
            return new d(viewGroup, this.f6309g, this.f6308f, this.f6311i);
        }
        if (i2 == CommonItemType.VITRIN_PROMO.getValue()) {
            return new f(viewGroup, this.f6309g, this.f6308f, this.f6312j);
        }
        if (i2 == CommonItemType.VITRIN_HAMI_INLINE.getValue()) {
            C0481za a2 = C0481za.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a2, "ItemListHamiInlineBindin….context), parent, false)");
            return new g(a2, this.f6313k, this.f6308f);
        } else if (i2 == CommonItemType.VITRIN_HAMI_APP.getValue() || i2 == PageItemType.LIST_HAMI_APP.ordinal()) {
            C0475xa a3 = C0475xa.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a3, "ItemListHamiAppBinding.i….context), parent, false)");
            return new c.c.a.n.c.c.a.a.a.f(a3, this.f6313k, this.f6308f);
        } else if (i2 == PageItemType.LIST_INLINE_APP.ordinal() || i2 == CommonItemType.LIST_INLINE_APP.getValue()) {
            Ba a4 = Ba.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a4, "ItemListInlineAppBinding….context), parent, false)");
            return new h(a4, this.f6313k, this.f6308f);
        } else if (i2 == PageItemType.LIST_APP.ordinal()) {
            C0452pa a5 = C0452pa.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a5, "ItemListAppBinding.infla….context), parent, false)");
            return new c.c.a.n.c.c.a.a.a.d(a5, this.f6314l, this.f6308f);
        } else if (i2 == PageItemType.LIST_APP_MINI.ordinal()) {
            Da a6 = Da.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a6, "ItemListMiniAppBinding.i….context), parent, false)");
            return new c(a6, this.f6314l, this.f6308f);
        } else if (i2 == PageItemType.LIST_VIDEO.ordinal()) {
            Ja a7 = Ja.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a7, "ItemListVideoBinding.inf….context), parent, false)");
            return new c.c.a.n.c.c.a.a.a.n(a7, this.m, this.f6308f);
        } else if (i2 == PageItemType.LIST_SERIAL.ordinal()) {
            Ha a8 = Ha.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a8, "ItemListSerialBinding.in….context), parent, false)");
            return new m(a8, this.n, this.f6308f);
        } else if (i2 == CommonItemType.LIST_EPISODE.getValue()) {
            C0469va a9 = C0469va.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a9, "ItemListEpisodeBinding.i….context), parent, false)");
            return new e(a9, this.o, this.f6308f);
        } else if (i2 == PageItemType.LIST_HAMI_INLINE.ordinal()) {
            C0481za a10 = C0481za.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a10, "ItemListHamiInlineBindin….context), parent, false)");
            return new g(a10, this.f6313k, this.f6308f);
        } else if (i2 == PageItemType.LIST_PROMO.ordinal()) {
            Fa a11 = Fa.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a11, "ItemListPromoBinding.inf….context), parent, false)");
            return new l(a11, this.f6308f);
        } else if (i2 == PageItemType.LIST_CATEGORY_ITEM.ordinal()) {
            C0457ra a12 = C0457ra.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a12, "ItemListCategoryBinding.….context), parent, false)");
            return new n<>(a12);
        } else if (i2 == PageItemType.LIST_CATEGORY_HEADER.ordinal()) {
            C0463ta a13 = C0463ta.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a13, "ItemListCategoryHeaderBi….context), parent, false)");
            return new n<>(a13);
        } else if (i2 == CommonItemType.DESCRIPTION.getValue()) {
            Xa a14 = Xa.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            h.f.b.j.a((Object) a14, "ItemPageDescriptionBindi….context), parent, false)");
            return new n<>(a14);
        } else {
            throw new IllegalStateException("");
        }
    }
}
