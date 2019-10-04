package com.farsitel.bazaar.ui.login;

import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: RegisterFragment.kt */
final /* synthetic */ class RegisterFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends Long>, h> {
    public RegisterFragment$onViewCreated$1$1(RegisterFragment registerFragment) {
        super(1, registerFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<Long>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(RegisterFragment.class);
    }

    public final String g() {
        return "handleResourceState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleResourceState";
    }

    public final void a(Resource<Long> resource) {
        ((RegisterFragment) this.receiver).a(resource);
    }
}
