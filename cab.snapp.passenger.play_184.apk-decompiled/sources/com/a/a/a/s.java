package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class s extends v<s> {
    /* access modifiers changed from: package-private */
    public final String a() {
        return "levelEnd";
    }

    public final s putLevelName(String str) {
        this.d.a("levelName", str);
        return this;
    }

    public final s putScore(Number number) {
        this.d.a(FirebaseAnalytics.b.SCORE, number);
        return this;
    }

    public final s putSuccess(boolean z) {
        this.d.a("success", z ? "true" : "false");
        return this;
    }
}
