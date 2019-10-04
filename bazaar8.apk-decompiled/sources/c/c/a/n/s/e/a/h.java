package c.c.a.n.s.e.a;

import androidx.lifecycle.LiveData;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.m.d;
import c.c.a.p.I;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import com.farsitel.bazaar.data.feature.payment.PaymentInfo;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: PaymentOptionsViewModel.kt */
public final class h extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<PaymentData>> f6897d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final d f6898e;

    /* renamed from: f  reason: collision with root package name */
    public final I f6899f;

    public h(d dVar, I i2) {
        j.b(dVar, "paymentRepository");
        j.b(i2, "workManagerScheduler");
        this.f6898e = dVar;
        this.f6899f = i2;
    }

    public final LiveData<Resource<PaymentData>> e() {
        return this.f6897d;
    }

    public final void a(String str, String str2) {
        j.b(str, "dealer");
        j.b(str2, "sku");
        g<Resource<PaymentData>> gVar = this.f6897d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.a(resource);
        C1125ra unused = C1103g.b(this, null, null, new PaymentOptionsViewModel$getBuyProductMethods$1(this, str, str2, null), 3, null);
    }

    public final void a(PaymentInfo paymentInfo) {
        if (paymentInfo.j()) {
            this.f6899f.i();
            g<Resource<PaymentData>> gVar = this.f6897d;
            PaymentState.AlreadyBought alreadyBought = PaymentState.AlreadyBought.f12162a;
            String f2 = paymentInfo.f();
            if (f2 != null) {
                String i2 = paymentInfo.i();
                if (i2 != null) {
                    Resource resource = new Resource(alreadyBought, new PurchasedItemData(f2, i2), null, 4, null);
                    gVar.a(resource);
                    return;
                }
                j.a();
                throw null;
            }
            j.a();
            throw null;
        }
        g<Resource<PaymentData>> gVar2 = this.f6897d;
        Resource resource2 = new Resource(PaymentState.BuyProductDataReceived.f12164a, paymentInfo, null, 4, null);
        gVar2.a(resource2);
    }

    public final void a(ErrorModel errorModel) {
        this.f6897d.a(new Resource(ResourceState.Error.f12177a, null, errorModel));
    }
}
