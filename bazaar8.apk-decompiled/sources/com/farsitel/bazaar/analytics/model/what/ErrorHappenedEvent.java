package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class ErrorHappenedEvent extends WhatType {
    public final String message;
    public final String name = "error_happened";

    public ErrorHappenedEvent(String str) {
        j.b(str, "message");
        this.message = str;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        return z.a(f.a("message", this.message));
    }
}
