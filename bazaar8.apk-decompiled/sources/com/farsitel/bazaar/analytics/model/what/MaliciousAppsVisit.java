package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: VisitEvent.kt */
public final class MaliciousAppsVisit extends VisitEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppsVisit(String str) {
        super("malicious_apps", str, null);
        j.b(str, "referrer");
    }
}
