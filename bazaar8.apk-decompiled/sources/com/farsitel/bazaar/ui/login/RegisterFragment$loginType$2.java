package com.farsitel.bazaar.ui.login;

import com.farsitel.bazaar.common.model.login.LoginType;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: RegisterFragment.kt */
final class RegisterFragment$loginType$2 extends Lambda implements a<LoginType> {
    public final /* synthetic */ RegisterFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterFragment$loginType$2(RegisterFragment registerFragment) {
        super(0);
        this.this$0 = registerFragment;
    }

    public final LoginType invoke() {
        return LoginType.values()[RegisterFragment.a(this.this$0).b()];
    }
}
