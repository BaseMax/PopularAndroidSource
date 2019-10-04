package com.google.android.gms.internal;

import com.google.android.gms.analytics.p;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class c extends p<c> {

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, String> f3113a = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f3113a.entrySet()) {
            String valueOf = String.valueOf(next.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
            sb.append("dimension");
            sb.append(valueOf);
            hashMap.put(sb.toString(), next.getValue());
        }
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        ((c) pVar).f3113a.putAll(this.f3113a);
    }

    public final Map<Integer, String> zzvr() {
        return Collections.unmodifiableMap(this.f3113a);
    }
}
