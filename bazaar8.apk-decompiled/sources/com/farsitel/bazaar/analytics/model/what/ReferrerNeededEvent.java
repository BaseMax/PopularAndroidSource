package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.b.i;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: WhatType.kt */
public abstract class ReferrerNeededEvent extends WhatType {
    public final String referrer;

    public ReferrerNeededEvent(String str) {
        j.b(str, "referrer");
        this.referrer = str;
    }

    public Map<String, Object> c() {
        return A.c(f.a("referrer", i.g(this.referrer)));
    }
}
