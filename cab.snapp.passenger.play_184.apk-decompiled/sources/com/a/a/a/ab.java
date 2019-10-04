package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class ab extends v<ab> {
    /* access modifiers changed from: package-private */
    public final String a() {
        return FirebaseAnalytics.a.SEARCH;
    }

    public final ab putQuery(String str) {
        this.d.a("query", str);
        return this;
    }
}
