package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class TransactionsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public TransactionsItemClick(String str) {
        super("transactions", str, null);
        j.b(str, "referrer");
    }
}
