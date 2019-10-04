package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class LaunchButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LaunchButtonClick(String str) {
        super("launch", str, null);
        j.b(str, "referrer");
    }
}
