package c.c.a.n.s.d;

import c.c.a.e.d.m.d;
import com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler;
import d.b.c;
import g.a.a;

/* compiled from: PaymentGatewayHandler_Factory */
public final class b implements c<PaymentGatewayHandler> {

    /* renamed from: a  reason: collision with root package name */
    public final a<d> f6870a;

    public b(a<d> aVar) {
        this.f6870a = aVar;
    }

    public static b a(a<d> aVar) {
        return new b(aVar);
    }

    public static PaymentGatewayHandler b(a<d> aVar) {
        return new PaymentGatewayHandler(aVar.get());
    }

    public PaymentGatewayHandler get() {
        return b(this.f6870a);
    }
}
