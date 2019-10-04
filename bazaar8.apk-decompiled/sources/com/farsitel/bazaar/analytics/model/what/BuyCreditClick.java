package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class BuyCreditClick extends ButtonClick {
    public final long amount;

    public BuyCreditClick(long j2) {
        super("buy_credit", e.a(), null);
        this.amount = j2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("amount", Long.valueOf(this.amount))));
        return b2;
    }
}
