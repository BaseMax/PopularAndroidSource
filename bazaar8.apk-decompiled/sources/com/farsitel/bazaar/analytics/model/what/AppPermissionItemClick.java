package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class AppPermissionItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppPermissionItemClick(String str) {
        super("app_permission", str, null);
        j.b(str, "referrer");
    }
}
