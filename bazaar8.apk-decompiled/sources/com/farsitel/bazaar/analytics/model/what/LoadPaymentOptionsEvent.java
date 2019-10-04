package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.A;
import h.f;
import java.util.Map;

/* compiled from: LoadEvent.kt */
public final class LoadPaymentOptionsEvent extends LoadEvent {
    public final long credit;
    public final int optionsCount;

    public LoadPaymentOptionsEvent(int i2, long j2) {
        super("payment_options", e.a(), null);
        this.optionsCount = i2;
        this.credit = j2;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = c();
        c2.putAll(A.b(f.a("options_count", Integer.valueOf(this.optionsCount)), f.a("credit", Long.valueOf(this.credit))));
        return c2;
    }
}
