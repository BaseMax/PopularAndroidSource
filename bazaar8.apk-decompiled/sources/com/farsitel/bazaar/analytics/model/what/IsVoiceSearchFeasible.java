package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class IsVoiceSearchFeasible extends WhatType {
    public final boolean isFeasible;
    public final String name = "feasible_voice_search";

    public IsVoiceSearchFeasible(boolean z) {
        this.isFeasible = z;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Boolean> b() {
        return z.a(f.a("is_voice_search_feasible", Boolean.valueOf(this.isFeasible)));
    }
}
