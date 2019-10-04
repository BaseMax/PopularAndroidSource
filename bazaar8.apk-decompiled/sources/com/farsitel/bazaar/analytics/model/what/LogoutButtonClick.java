package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class LogoutButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LogoutButtonClick(String str) {
        super("logout", str, null);
        j.b(str, "referrer");
    }
}
