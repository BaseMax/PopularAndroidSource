package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: VisitEvent.kt */
public final class DialogVisit extends VisitEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DialogVisit(String str) {
        super("dialog", str, null);
        j.b(str, "referrer");
    }
}
