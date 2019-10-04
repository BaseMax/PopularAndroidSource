package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class MaliciousAppItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppItemClick(String str) {
        super("malicious_apps", str, null);
        j.b(str, "referrer");
    }
}
