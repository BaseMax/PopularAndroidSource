package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class u extends v<u> {
    /* access modifiers changed from: package-private */
    public final String a() {
        return FirebaseAnalytics.a.LOGIN;
    }

    public final u putMethod(String str) {
        this.d.a("method", str);
        return this;
    }

    public final u putSuccess(boolean z) {
        this.d.a("success", Boolean.toString(z));
        return this;
    }
}
