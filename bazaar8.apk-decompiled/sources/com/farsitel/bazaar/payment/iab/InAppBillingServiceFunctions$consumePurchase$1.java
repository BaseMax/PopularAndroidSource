package com.farsitel.bazaar.payment.iab;

import c.c.a.k.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.payment.iab.InAppBillingServiceFunctions$consumePurchase$1", f = "InAppBillingServiceFunctions.kt", l = {309}, m = "invokeSuspend")
/* compiled from: InAppBillingServiceFunctions.kt */
final class InAppBillingServiceFunctions$consumePurchase$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ String $packageName;
    public final /* synthetic */ String $purchaseToken;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InAppBillingServiceFunctions$consumePurchase$1(a aVar, String str, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
        this.$packageName = str;
        this.$purchaseToken = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        InAppBillingServiceFunctions$consumePurchase$1 inAppBillingServiceFunctions$consumePurchase$1 = new InAppBillingServiceFunctions$consumePurchase$1(this.this$0, this.$packageName, this.$purchaseToken, bVar);
        inAppBillingServiceFunctions$consumePurchase$1.p$ = (H) obj;
        return inAppBillingServiceFunctions$consumePurchase$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((InAppBillingServiceFunctions$consumePurchase$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.m.d b2 = this.this$0.f6075e;
            String str = this.$packageName;
            String str2 = this.$purchaseToken;
            this.label = 1;
            obj = b2.a(str, str2, (b<? super Boolean>) this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
