package com.farsitel.bazaar.ui.subscription;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import h.f.a.a;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: SubscriptionFragment.kt */
final class SubscriptionFragment$emptyViewData$1 extends Lambda implements a<h> {
    public final /* synthetic */ SubscriptionFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SubscriptionFragment$emptyViewData$1(SubscriptionFragment subscriptionFragment) {
        super(0);
        this.this$0 = subscriptionFragment;
    }

    public final void invoke() {
        SubscriptionFragment subscriptionFragment = this.this$0;
        String b2 = subscriptionFragment.b((int) R.string.title_action_top_bought_empty);
        j.a((Object) b2, "getString(R.string.title_action_top_bought_empty)");
        subscriptionFragment.a("top-grossing", b2, d.a(new c.d(), null, 1, null));
    }
}
