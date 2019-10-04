package com.farsitel.bazaar.ui.profile.nickname;

import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: EditNickNameFragment.kt */
final /* synthetic */ class EditNickNameFragment$onActivityCreated$1$1 extends FunctionReference implements b<Resource<? extends None>, h> {
    public EditNickNameFragment$onActivityCreated$1$1(EditNickNameFragment editNickNameFragment) {
        super(1, editNickNameFragment);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<None>) (Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(EditNickNameFragment.class);
    }

    public final String g() {
        return "handleResourceState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleResourceState";
    }

    public final void a(Resource<None> resource) {
        ((EditNickNameFragment) this.receiver).a(resource);
    }
}
