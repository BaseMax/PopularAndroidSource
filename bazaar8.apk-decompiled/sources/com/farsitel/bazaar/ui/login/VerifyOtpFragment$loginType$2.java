package com.farsitel.bazaar.ui.login;

import com.farsitel.bazaar.common.model.login.LoginType;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: VerifyOtpFragment.kt */
final class VerifyOtpFragment$loginType$2 extends Lambda implements a<LoginType> {
    public final /* synthetic */ VerifyOtpFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VerifyOtpFragment$loginType$2(VerifyOtpFragment verifyOtpFragment) {
        super(0);
        this.this$0 = verifyOtpFragment;
    }

    public final LoginType invoke() {
        return LoginType.values()[VerifyOtpFragment.c(this.this$0).a()];
    }
}
