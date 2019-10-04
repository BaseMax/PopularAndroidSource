package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: LoadEvent.kt */
public final class LoadCreditOptionsEvent extends LoadEvent {
    public final int optionsCount;

    public LoadCreditOptionsEvent(int i2) {
        super("credit_options", e.a(), null);
        this.optionsCount = i2;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = c();
        c2.putAll(z.a(f.a("options_count", Integer.valueOf(this.optionsCount))));
        return c2;
    }
}
