package com.farsitel.bazaar.data.feature.payment.remote;

import c.c.a.e.d.m.b.b;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource", f = "PaymentRemoteDataSource.kt", l = {57}, m = "collectPayment")
/* compiled from: PaymentRemoteDataSource.kt */
final class PaymentRemoteDataSource$collectPayment$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentRemoteDataSource$collectPayment$1(b bVar, h.c.b bVar2) {
        super(bVar2);
        this.this$0 = bVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((String) null, (h.c.b<? super Either<None>>) this);
    }
}
