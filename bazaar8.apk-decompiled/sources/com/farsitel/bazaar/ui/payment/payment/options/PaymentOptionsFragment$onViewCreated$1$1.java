package com.farsitel.bazaar.ui.payment.payment.options;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: PaymentOptionsFragment.kt */
final /* synthetic */ class PaymentOptionsFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends PaymentData>, h> {
    public PaymentOptionsFragment$onViewCreated$1$1(PaymentOptionsFragment paymentOptionsFragment) {
        super(1, paymentOptionsFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends PaymentData>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(PaymentOptionsFragment.class);
    }

    public final String g() {
        return "handlePaymentStates(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handlePaymentStates";
    }

    public final void a(Resource<? extends PaymentData> resource) {
        ((PaymentOptionsFragment) this.receiver).a(resource);
    }
}
