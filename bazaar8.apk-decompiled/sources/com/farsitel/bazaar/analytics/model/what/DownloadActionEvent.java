package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class DownloadActionEvent extends WhatType {
    public final String action;
    public final String name = "download_action";

    public DownloadActionEvent(String str) {
        j.b(str, "action");
        this.action = str;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        return z.a(f.a("status", this.action));
    }
}
