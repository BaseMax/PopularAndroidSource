package com.farsitel.bazaar.payment.iab;

import c.c.a.k.a.a;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.payment.iab.InAppBillingServiceFunctions$getSkuDetails$1", f = "InAppBillingServiceFunctions.kt", l = {131}, m = "invokeSuspend")
/* compiled from: InAppBillingServiceFunctions.kt */
final class InAppBillingServiceFunctions$getSkuDetails$1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends String>>>, Object> {
    public final /* synthetic */ int $apiVersion;
    public final /* synthetic */ String $packageName;
    public final /* synthetic */ List $skuList;
    public final /* synthetic */ String $type;
    public Object L$0;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InAppBillingServiceFunctions$getSkuDetails$1(a aVar, int i2, String str, String str2, List list, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
        this.$apiVersion = i2;
        this.$packageName = str;
        this.$type = str2;
        this.$skuList = list;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        InAppBillingServiceFunctions$getSkuDetails$1 inAppBillingServiceFunctions$getSkuDetails$1 = new InAppBillingServiceFunctions$getSkuDetails$1(this.this$0, this.$apiVersion, this.$packageName, this.$type, this.$skuList, bVar);
        inAppBillingServiceFunctions$getSkuDetails$1.p$ = (H) obj;
        return inAppBillingServiceFunctions$getSkuDetails$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((InAppBillingServiceFunctions$getSkuDetails$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            String l2 = c.c.a.d.a.a.f4744b.a(this.this$0.f6073c).l();
            c.c.a.e.d.m.d b2 = this.this$0.f6075e;
            int i3 = this.$apiVersion;
            String str = this.$packageName;
            String str2 = this.$type;
            List list = this.$skuList;
            this.L$0 = l2;
            this.label = 1;
            obj = b2.a(l2, i3, str, str2, list, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            String str3 = (String) this.L$0;
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
