package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class AverageRateStarsClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AverageRateStarsClick(String str) {
        super("average_rate_stars", str, null);
        j.b(str, "referrer");
    }
}
