package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class AppUpgradeChangeLogItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppUpgradeChangeLogItemClick(String str) {
        super("app_upgrade_change_log", str, null);
        j.b(str, "referrer");
    }
}
