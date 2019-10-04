package c.c.a.n.s.c;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: GiftCardViewModel.kt */
public final class d extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<None>> f6863d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final c.c.a.e.d.m.d f6864e;

    public d(c.c.a.e.d.m.d dVar) {
        j.b(dVar, "paymentRepository");
        this.f6864e = dVar;
    }

    public final LiveData<Resource<None>> e() {
        return this.f6863d;
    }

    public final void a(String str) {
        j.b(str, "giftCode");
        t<Resource<None>> tVar = this.f6863d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new GiftCardViewModel$redeemGiftCard$1(this, str, null), 3, null);
    }
}
