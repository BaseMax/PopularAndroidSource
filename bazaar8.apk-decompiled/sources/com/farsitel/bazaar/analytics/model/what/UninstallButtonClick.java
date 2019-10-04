package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class UninstallButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UninstallButtonClick(String str) {
        super("uninstall", str, null);
        j.b(str, "referrer");
    }
}
