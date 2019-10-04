package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class LogoutRefusedButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LogoutRefusedButtonClick(String str) {
        super("logout_refused", str, null);
        j.b(str, "referrer");
    }
}
