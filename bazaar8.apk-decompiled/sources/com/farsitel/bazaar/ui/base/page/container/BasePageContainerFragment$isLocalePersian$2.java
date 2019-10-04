package com.farsitel.bazaar.ui.base.page.container;

import android.content.Context;
import c.c.a.d.a.a;
import c.c.a.n.c.c.c.c;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: BasePageContainerFragment.kt */
final class BasePageContainerFragment$isLocalePersian$2 extends Lambda implements a<Boolean> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BasePageContainerFragment$isLocalePersian$2(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final boolean invoke() {
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha = this.this$0.Ha();
        j.a((Object) Ha, "requireContext()");
        return aVar.a(Ha).w();
    }
}
