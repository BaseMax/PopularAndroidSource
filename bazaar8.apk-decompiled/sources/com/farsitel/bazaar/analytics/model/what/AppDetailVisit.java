package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: VisitEvent.kt */
public final class AppDetailVisit extends VisitEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailVisit(String str) {
        super("app", str, null);
        j.b(str, "referrer");
    }
}
