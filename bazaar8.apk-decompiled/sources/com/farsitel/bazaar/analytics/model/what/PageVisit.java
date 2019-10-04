package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: VisitEvent.kt */
public final class PageVisit extends VisitEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageVisit(String str) {
        super("page", str, null);
        j.b(str, "referrer");
    }
}
