package c.c.a.n.s.b;

import c.c.a.p.I;
import com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler;
import d.b.c;
import g.a.a;

/* compiled from: GatewayPaymentViewModel_Factory */
public final class h implements c<g> {

    /* renamed from: a  reason: collision with root package name */
    public final a<PaymentGatewayHandler> f6858a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f6859b;

    public h(a<PaymentGatewayHandler> aVar, a<I> aVar2) {
        this.f6858a = aVar;
        this.f6859b = aVar2;
    }

    public static h a(a<PaymentGatewayHandler> aVar, a<I> aVar2) {
        return new h(aVar, aVar2);
    }

    public static g b(a<PaymentGatewayHandler> aVar, a<I> aVar2) {
        return new g(aVar.get(), aVar2.get());
    }

    public g get() {
        return b(this.f6858a, this.f6859b);
    }
}
