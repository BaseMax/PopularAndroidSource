package com.farsitel.bazaar.ui.category;

import android.content.Context;
import c.c.a.d.a.a;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: CategoriesFragment.kt */
final class CategoriesFragment$isLocalePersian$2 extends Lambda implements a<Boolean> {
    public final /* synthetic */ CategoriesFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CategoriesFragment$isLocalePersian$2(CategoriesFragment categoriesFragment) {
        super(0);
        this.this$0 = categoriesFragment;
    }

    public final boolean invoke() {
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha = this.this$0.Ha();
        j.a((Object) Ha, "requireContext()");
        return aVar.a(Ha).w();
    }
}
