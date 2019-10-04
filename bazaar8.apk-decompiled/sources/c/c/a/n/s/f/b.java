package c.c.a.n.s.f;

import androidx.lifecycle.LiveData;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;

/* compiled from: StartPaymentViewModel.kt */
public final class b extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<None>> f6906d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f6907e;

    public b(a aVar) {
        j.b(aVar, "accountRepository");
        this.f6907e = aVar;
    }

    public final void a(String str) {
        g<Resource<None>> gVar = this.f6906d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.a(resource);
        if (this.f6907e.u()) {
            if (str == null || str.length() == 0) {
                g<Resource<None>> gVar2 = this.f6906d;
                Resource resource2 = new Resource(PaymentState.NavigateToCreditOptions.f12167a, null, null, 6, null);
                gVar2.a(resource2);
                return;
            }
            g<Resource<None>> gVar3 = this.f6906d;
            Resource resource3 = new Resource(PaymentState.NavigateToBuyProduct.f12166a, null, null, 6, null);
            gVar3.a(resource3);
            return;
        }
        g<Resource<None>> gVar4 = this.f6906d;
        Resource resource4 = new Resource(PaymentState.NotLoggedIn.f12168a, null, null, 6, null);
        gVar4.a(resource4);
    }

    public final LiveData<Resource<None>> e() {
        return this.f6906d;
    }
}
