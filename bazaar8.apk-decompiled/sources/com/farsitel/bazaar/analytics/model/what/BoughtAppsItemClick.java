package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class BoughtAppsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BoughtAppsItemClick(String str) {
        super("bought_apps", str, null);
        j.b(str, "referrer");
    }
}
