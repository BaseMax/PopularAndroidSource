package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class InstalledAppsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InstalledAppsItemClick(String str) {
        super("installed_apps", str, null);
        j.b(str, "referrer");
    }
}
