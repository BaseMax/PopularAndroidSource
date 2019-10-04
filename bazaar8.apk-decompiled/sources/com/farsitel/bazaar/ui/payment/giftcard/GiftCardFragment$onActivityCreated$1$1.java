package com.farsitel.bazaar.ui.payment.giftcard;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: GiftCardFragment.kt */
final /* synthetic */ class GiftCardFragment$onActivityCreated$1$1 extends FunctionReference implements b<Resource<? extends None>, h> {
    public GiftCardFragment$onActivityCreated$1$1(GiftCardFragment giftCardFragment) {
        super(1, giftCardFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<None>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(GiftCardFragment.class);
    }

    public final String g() {
        return "handleResourceState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleResourceState";
    }

    public final void a(Resource<None> resource) {
        ((GiftCardFragment) this.receiver).a(resource);
    }
}
