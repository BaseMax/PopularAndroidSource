package c.c.a.h.b;

import android.content.Context;
import com.farsitel.bazaar.data.feature.payment.local.PaymentDatabase;
import d.b.c;
import d.b.h;
import g.a.a;

/* renamed from: c.c.a.h.b.x  reason: case insensitive filesystem */
/* compiled from: DatabaseModule_ProvidePaymentDatabaseFactory */
public final class C0655x implements c<PaymentDatabase> {

    /* renamed from: a  reason: collision with root package name */
    public final C0629o f6046a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6047b;

    public C0655x(C0629o oVar, a<Context> aVar) {
        this.f6046a = oVar;
        this.f6047b = aVar;
    }

    public static C0655x a(C0629o oVar, a<Context> aVar) {
        return new C0655x(oVar, aVar);
    }

    public static PaymentDatabase b(C0629o oVar, a<Context> aVar) {
        return a(oVar, aVar.get());
    }

    public static PaymentDatabase a(C0629o oVar, Context context) {
        PaymentDatabase c2 = oVar.c(context);
        h.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }

    public PaymentDatabase get() {
        return b(this.f6046a, this.f6047b);
    }
}
