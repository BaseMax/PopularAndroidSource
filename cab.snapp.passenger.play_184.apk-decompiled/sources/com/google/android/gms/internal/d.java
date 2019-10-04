package com.google.android.gms.internal;

import com.google.android.gms.analytics.p;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class d extends p<d> {

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, Double> f3127a = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f3127a.entrySet()) {
            String valueOf = String.valueOf(next.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 6);
            sb.append("metric");
            sb.append(valueOf);
            hashMap.put(sb.toString(), next.getValue());
        }
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        ((d) pVar).f3127a.putAll(this.f3127a);
    }

    public final Map<Integer, Double> zzvs() {
        return Collections.unmodifiableMap(this.f3127a);
    }
}
