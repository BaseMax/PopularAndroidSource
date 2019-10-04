package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class RecentDownloadedAppsItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RecentDownloadedAppsItemClick(String str) {
        super("recent_downloaded_apps", str, null);
        j.b(str, "referrer");
    }
}
