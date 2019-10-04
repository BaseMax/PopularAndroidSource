package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class UpgradableAppsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsItemClick(String str) {
        super("upgradable_apps", str, null);
        j.b(str, "referrer");
    }
}
