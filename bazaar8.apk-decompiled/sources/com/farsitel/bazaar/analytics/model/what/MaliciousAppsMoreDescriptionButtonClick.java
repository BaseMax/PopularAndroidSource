package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class MaliciousAppsMoreDescriptionButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppsMoreDescriptionButtonClick(String str) {
        super("malicious_apps_more_description", str, null);
        j.b(str, "referrer");
    }
}
