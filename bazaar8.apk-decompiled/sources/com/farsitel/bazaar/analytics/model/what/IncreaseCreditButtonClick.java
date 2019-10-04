package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class IncreaseCreditButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IncreaseCreditButtonClick(String str) {
        super("buy_credit", str, null);
        j.b(str, "referrer");
    }
}
