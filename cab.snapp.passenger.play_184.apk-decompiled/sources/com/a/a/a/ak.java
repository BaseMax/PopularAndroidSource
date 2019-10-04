package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class ak extends v<ak> {
    /* access modifiers changed from: package-private */
    public final String a() {
        return FirebaseAnalytics.a.SHARE;
    }

    public final ak putMethod(String str) {
        this.d.a("method", str);
        return this;
    }

    public final ak putContentId(String str) {
        this.d.a("contentId", str);
        return this;
    }

    public final ak putContentName(String str) {
        this.d.a("contentName", str);
        return this;
    }

    public final ak putContentType(String str) {
        this.d.a("contentType", str);
        return this;
    }
}
