package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class TabChangeEvent extends WhatType {
    public final String from;
    public final String name = "tab_change";
    public final String target;

    public TabChangeEvent(String str, String str2) {
        j.b(str, "from");
        j.b(str2, "target");
        this.from = str;
        this.target = str2;
    }

    public String a() {
        return this.name;
    }

    public Map<String, String> b() {
        return A.b(f.a("from", this.from), f.a("target", this.target));
    }
}
