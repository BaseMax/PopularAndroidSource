package com.farsitel.bazaar.data.feature.payment;

import c.c.a.e.d.m.a;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.payment.PaymentRepository", f = "PaymentRepository.kt", l = {101}, m = "getCredit")
/* compiled from: PaymentRepository.kt */
final class PaymentRepository$getCredit$1 extends ContinuationImpl {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ c.c.a.e.d.m.d this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentRepository$getCredit$1(c.c.a.e.d.m.d dVar, b bVar) {
        super(bVar);
        this.this$0 = dVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((b<? super Either<a>>) this);
    }
}