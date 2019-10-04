package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class BoughtSubscriptionsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BoughtSubscriptionsItemClick(String str) {
        super("bought_subscriptions", str, null);
        j.b(str, "referrer");
    }
}
