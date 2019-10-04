package com.farsitel.bazaar.ui.payment.gateway;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: GatewayPaymentFragment.kt */
final /* synthetic */ class GatewayPaymentFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends PaymentData>, h> {
    public GatewayPaymentFragment$onViewCreated$1$1(GatewayPaymentFragment gatewayPaymentFragment) {
        super(1, gatewayPaymentFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends PaymentData>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(GatewayPaymentFragment.class);
    }

    public final String g() {
        return "handlePaymentStates(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handlePaymentStates";
    }

    public final void a(Resource<? extends PaymentData> resource) {
        ((GatewayPaymentFragment) this.receiver).a(resource);
    }
}
