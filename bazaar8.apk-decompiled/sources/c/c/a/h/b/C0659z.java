package c.c.a.h.b;

import c.c.a.e.d.m.a.f;
import com.farsitel.bazaar.data.feature.payment.local.PaymentDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.z  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvidePurchaseDaoFactory */
public final class C0659z implements c<f> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6058a;

    /* renamed from: b  reason: collision with root package name */
    public final a<PaymentDatabase> f6059b;

    public C0659z(C0629o oVar, a<PaymentDatabase> aVar) {
        this.f6058a = oVar;
        this.f6059b = aVar;
    }

    public static C0659z a(C0629o oVar, a<PaymentDatabase> aVar) {
        return new C0659z(oVar, aVar);
    }

    public static f b(C0629o oVar, a<PaymentDatabase> aVar) {
        return a(oVar, aVar.get());
    }

    public static f a(C0629o oVar, PaymentDatabase paymentDatabase) {
        f a2 = oVar.a(paymentDatabase);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public f get() {
        return b(this.f6058a, this.f6059b);
    }
}
