package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: LoadEvent.kt */
public final class LoadAppDetails extends LoadEvent {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoadAppDetails(String str) {
        super("app_details", str, null);
        j.b(str, "referrer");
    }
}
