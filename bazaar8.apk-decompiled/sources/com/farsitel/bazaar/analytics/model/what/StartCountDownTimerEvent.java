package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class StartCountDownTimerEvent extends WhatType {
    public final String name = "start_count_down_timer";
    public final long seconds;

    public StartCountDownTimerEvent(long j2) {
        this.seconds = j2;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        return z.a(f.a("seconds", Long.valueOf(this.seconds)));
    }
}
