package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class GiftCardsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public GiftCardsItemClick(String str) {
        super("gift_cards", str, null);
        j.b(str, "referrer");
    }
}
