package com.farsitel.bazaar.ui.payment.credit.options;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: CreditOptionsFragment.kt */
final /* synthetic */ class CreditOptionsFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends PaymentData>, h> {
    public CreditOptionsFragment$onViewCreated$1$1(CreditOptionsFragment creditOptionsFragment) {
        super(1, creditOptionsFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends PaymentData>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(CreditOptionsFragment.class);
    }

    public final String g() {
        return "handlePaymentStates(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handlePaymentStates";
    }

    public final void a(Resource<? extends PaymentData> resource) {
        ((CreditOptionsFragment) this.receiver).a(resource);
    }
}
