package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class InstallButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InstallButtonClick(String str) {
        super("install", str, null);
        j.b(str, "referrer");
    }
}