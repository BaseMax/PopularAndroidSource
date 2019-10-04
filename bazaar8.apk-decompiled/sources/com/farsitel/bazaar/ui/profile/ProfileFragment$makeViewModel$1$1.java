package com.farsitel.bazaar.ui.profile;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: ProfileFragment.kt */
final /* synthetic */ class ProfileFragment$makeViewModel$1$1 extends FunctionReference implements b<Resource<? extends None>, h> {
    public ProfileFragment$makeViewModel$1$1(ProfileFragment profileFragment) {
        super(1, profileFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<None>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(ProfileFragment.class);
    }

    public final String g() {
        return "handleLogoutState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleLogoutState";
    }

    public final void a(Resource<None> resource) {
        ((ProfileFragment) this.receiver).c(resource);
    }
}
