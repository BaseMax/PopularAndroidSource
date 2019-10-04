package com.farsitel.bazaar.analytics.model.where;

import h.f.b.j;

/* compiled from: DetailsScreen.kt */
public final class AppDetailsScreen extends DetailsScreen {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailsScreen(String str, Long l2) {
        super("app", str, l2, null);
        j.b(str, "packageName");
    }
}
