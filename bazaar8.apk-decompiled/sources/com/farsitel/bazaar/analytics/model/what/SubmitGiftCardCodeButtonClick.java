package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class SubmitGiftCardCodeButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SubmitGiftCardCodeButtonClick(String str) {
        super("submit_gift_card_code", str, null);
        j.b(str, "referrer");
    }
}
