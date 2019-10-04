package c.c.a.n.s.b;

import androidx.lifecycle.LiveData;
import c.c.a.d.f.p;
import c.c.a.p.I;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import com.farsitel.bazaar.ui.payment.PaymentType;
import com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler;
import com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType;
import h.f.b.j;

/* compiled from: GatewayPaymentViewModel.kt */
public final class g extends p {

    /* renamed from: d  reason: collision with root package name */
    public final c.c.a.c.h.g<Resource<PaymentData>> f6854d = new c.c.a.c.h.g<>();

    /* renamed from: e  reason: collision with root package name */
    public final f f6855e = new f(this);

    /* renamed from: f  reason: collision with root package name */
    public final PaymentGatewayHandler f6856f;

    /* renamed from: g  reason: collision with root package name */
    public final I f6857g;

    public g(PaymentGatewayHandler paymentGatewayHandler, I i2) {
        j.b(paymentGatewayHandler, "paymentGatewayHandler");
        j.b(i2, "workManagerScheduler");
        this.f6856f = paymentGatewayHandler;
        this.f6857g = i2;
    }

    public void d() {
        super.d();
        this.f6856f.b();
    }

    public final LiveData<Resource<PaymentData>> e() {
        return this.f6854d;
    }

    public final void f() {
        c.c.a.c.h.g<Resource<PaymentData>> gVar = this.f6854d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.a(resource);
        this.f6856f.g();
    }

    public final void a(String str, String str2, String str3, long j2, PaymentType paymentType, PaymentGatewayType paymentGatewayType, String str4) {
        j.b(str, "dealer");
        j.b(paymentType, "paymentType");
        j.b(paymentGatewayType, "paymentGatewayType");
        j.b(str4, "gatewayCode");
        Resource a2 = this.f6854d.a();
        if (!((a2 != null ? a2.d() : null) instanceof PaymentState.UserAction)) {
            c.c.a.c.h.g<Resource<PaymentData>> gVar = this.f6854d;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            gVar.a(resource);
            this.f6856f.a(str, str2, str3, j2, paymentType, paymentGatewayType, str4, this.f6855e);
        }
    }
}
