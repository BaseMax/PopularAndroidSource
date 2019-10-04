package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class MyBazaarHelpButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MyBazaarHelpButtonClick(String str) {
        super("my_bazaar_help", str, null);
        j.b(str, "referrer");
    }
}
