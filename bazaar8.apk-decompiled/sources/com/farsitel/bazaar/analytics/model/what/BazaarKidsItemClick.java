package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class BazaarKidsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarKidsItemClick(String str) {
        super("bazaar_kids", str, null);
        j.b(str, "referrer");
    }
}
