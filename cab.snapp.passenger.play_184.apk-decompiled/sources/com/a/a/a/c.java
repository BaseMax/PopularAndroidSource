package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

final class c {

    /* renamed from: a  reason: collision with root package name */
    final e f1668a;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Object> f1669b = new ConcurrentHashMap();

    public c(e eVar) {
        this.f1668a = eVar;
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        if (!this.f1668a.isNull(str, "key") && !this.f1668a.isNull(str2, FirebaseAnalytics.b.VALUE)) {
            a(this.f1668a.limitStringLength(str), (Object) this.f1668a.limitStringLength(str2));
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, Number number) {
        if (!this.f1668a.isNull(str, "key") && !this.f1668a.isNull(number, FirebaseAnalytics.b.VALUE)) {
            a(this.f1668a.limitStringLength(str), (Object) number);
        }
    }

    private void a(String str, Object obj) {
        if (!this.f1668a.isFullMap(this.f1669b, str)) {
            this.f1669b.put(str, obj);
        }
    }

    public final String toString() {
        return new org.a.c((Map<?, ?>) this.f1669b).toString();
    }
}
