package com.farsitel.bazaar.ui.payment.starter;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: StartPaymentFragment.kt */
final /* synthetic */ class StartPaymentFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends None>, h> {
    public StartPaymentFragment$onViewCreated$1$1(StartPaymentFragment startPaymentFragment) {
        super(1, startPaymentFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<None>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(StartPaymentFragment.class);
    }

    public final String g() {
        return "handlePaymentStates(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handlePaymentStates";
    }

    public final void a(Resource<None> resource) {
        ((StartPaymentFragment) this.receiver).a(resource);
    }
}
