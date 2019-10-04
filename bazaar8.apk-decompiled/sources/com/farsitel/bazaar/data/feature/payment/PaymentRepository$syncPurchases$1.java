package com.farsitel.bazaar.data.feature.payment;

import h.c.b;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.payment.PaymentRepository", f = "PaymentRepository.kt", l = {80, 81}, m = "syncPurchases")
/* compiled from: PaymentRepository.kt */
final class PaymentRepository$syncPurchases$1 extends ContinuationImpl {
    public long J$0;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ c.c.a.e.d.m.d this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentRepository$syncPurchases$1(c.c.a.e.d.m.d dVar, b bVar) {
        super(bVar);
        this.this$0 = dVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(this);
    }
}
