package com.farsitel.bazaar.ui.login;

import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: VerifyOtpFragment.kt */
final /* synthetic */ class VerifyOtpFragment$onActivityCreated$1$2 extends FunctionReference implements b<Resource<? extends Long>, h> {
    public VerifyOtpFragment$onActivityCreated$1$2(VerifyOtpFragment verifyOtpFragment) {
        super(1, verifyOtpFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<Long>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(VerifyOtpFragment.class);
    }

    public final String g() {
        return "handleResendSmsState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleResendSmsState";
    }

    public final void a(Resource<Long> resource) {
        ((VerifyOtpFragment) this.receiver).a(resource);
    }
}
