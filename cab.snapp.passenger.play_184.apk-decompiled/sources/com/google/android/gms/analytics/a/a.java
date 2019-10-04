package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.l;
import com.google.android.gms.analytics.p;
import com.google.android.gms.common.internal.ap;
import java.util.HashMap;
import java.util.Map;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f2568a = new HashMap();

    private final void a(String str, String str2) {
        ap.checkNotNull(str, "Name should be non-null");
        this.f2568a.put(str, str2);
    }

    public final a setBrand(String str) {
        a("br", str);
        return this;
    }

    public final a setCategory(String str) {
        a("ca", str);
        return this;
    }

    public final a setCouponCode(String str) {
        a("cc", str);
        return this;
    }

    public final a setCustomDimension(int i, String str) {
        a(l.zzat(i), str);
        return this;
    }

    public final a setCustomMetric(int i, int i2) {
        a(l.zzau(i), Integer.toString(i2));
        return this;
    }

    public final a setId(String str) {
        a("id", str);
        return this;
    }

    public final a setName(String str) {
        a("nm", str);
        return this;
    }

    public final a setPosition(int i) {
        a("ps", Integer.toString(i));
        return this;
    }

    public final a setPrice(double d) {
        a("pr", Double.toString(d));
        return this;
    }

    public final a setQuantity(int i) {
        a("qt", Integer.toString(i));
        return this;
    }

    public final a setVariant(String str) {
        a("va", str);
        return this;
    }

    public final String toString() {
        return p.zzr(this.f2568a);
    }

    public final Map<String, String> zzdr(String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f2568a.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf((String) next.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), (String) next.getValue());
        }
        return hashMap;
    }
}
