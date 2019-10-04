package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class MyBazaarSettingsButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MyBazaarSettingsButtonClick(String str) {
        super("my_bazaar_settings", str, null);
        j.b(str, "referrer");
    }
}
