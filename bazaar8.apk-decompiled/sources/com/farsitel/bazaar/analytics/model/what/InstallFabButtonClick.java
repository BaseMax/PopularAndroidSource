package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class InstallFabButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InstallFabButtonClick(String str) {
        super("install_fab", str, null);
        j.b(str, "referrer");
    }
}
