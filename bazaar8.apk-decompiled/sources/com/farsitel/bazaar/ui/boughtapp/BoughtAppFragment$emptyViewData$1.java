package com.farsitel.bazaar.ui.boughtapp;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import h.f.a.a;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: BoughtAppFragment.kt */
final class BoughtAppFragment$emptyViewData$1 extends Lambda implements a<h> {
    public final /* synthetic */ BoughtAppFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BoughtAppFragment$emptyViewData$1(BoughtAppFragment boughtAppFragment) {
        super(0);
        this.this$0 = boughtAppFragment;
    }

    public final void invoke() {
        BoughtAppFragment boughtAppFragment = this.this$0;
        String b2 = boughtAppFragment.b((int) R.string.title_action_top_bought_empty);
        j.a((Object) b2, "getString(R.string.title_action_top_bought_empty)");
        boughtAppFragment.a("top-grossing", b2, d.a(new c.d(), null, 1, null));
    }
}
