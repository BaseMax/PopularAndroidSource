package com.google.android.gms.internal;

import com.google.android.gms.analytics.p;
import com.google.android.gms.common.internal.ap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class e extends p<e> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f3134a = new HashMap();

    public final void set(String str, String str2) {
        ap.zzgm(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        ap.zzh(str, "Name can not be empty or \"&\"");
        this.f3134a.put(str, str2);
    }

    public final String toString() {
        return zzl(this.f3134a);
    }

    public final /* synthetic */ void zzb(p pVar) {
        e eVar = (e) pVar;
        ap.checkNotNull(eVar);
        eVar.f3134a.putAll(this.f3134a);
    }

    public final Map<String, Object> zzvt() {
        return Collections.unmodifiableMap(this.f3134a);
    }
}
