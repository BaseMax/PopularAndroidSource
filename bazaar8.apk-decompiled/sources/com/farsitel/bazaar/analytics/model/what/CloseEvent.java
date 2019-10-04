package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class CloseEvent extends WhatType {
    public final String name = "close";
    public final long totalTime;

    public CloseEvent(long j2) {
        this.totalTime = j2;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Long> b() {
        return z.a(f.a("total_time", Long.valueOf(this.totalTime)));
    }
}
