package c.c.a.n.s.a.a;

import androidx.lifecycle.LiveData;
import c.c.a.d.f.p;
import c.c.a.e.d.m.d;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import com.farsitel.bazaar.data.feature.payment.CreditOptionList;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CreditOptionsViewModel.kt */
public final class g extends p {

    /* renamed from: d  reason: collision with root package name */
    public final c.c.a.c.h.g<Resource<PaymentData>> f6824d = new c.c.a.c.h.g<>();

    /* renamed from: e  reason: collision with root package name */
    public final d f6825e;

    public g(d dVar) {
        j.b(dVar, "paymentRepository");
        this.f6825e = dVar;
    }

    public final LiveData<Resource<PaymentData>> e() {
        return this.f6824d;
    }

    public final void b(long j2) {
        c.c.a.c.h.g<Resource<PaymentData>> gVar = this.f6824d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.a(resource);
        C1125ra unused = C1103g.b(this, null, null, new CreditOptionsViewModel$getCreditOptions$1(this, j2, null), 3, null);
    }

    public final void a(long j2) {
        c.c.a.c.h.g<Resource<PaymentData>> gVar = this.f6824d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.a(resource);
        C1125ra unused = C1103g.b(this, null, null, new CreditOptionsViewModel$getBuyCreditMethods$1(this, j2, null), 3, null);
    }

    public final CreditOptionList a(long j2, List<CreditOption> list) {
        ArrayList arrayList = new ArrayList();
        for (T next : list) {
            if (((CreditOption) next).a() >= j2) {
                arrayList.add(next);
            }
        }
        return new CreditOptionList(arrayList);
    }
}
