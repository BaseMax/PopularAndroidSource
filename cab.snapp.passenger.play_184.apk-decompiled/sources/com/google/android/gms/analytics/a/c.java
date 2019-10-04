package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.p;
import com.google.android.gms.common.internal.ap;
import java.util.HashMap;
import java.util.Map;

public final class c {
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_VIEW = "view";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f2570a = new HashMap();

    private final void a(String str, String str2) {
        ap.checkNotNull(str, "Name should be non-null");
        this.f2570a.put(str, str2);
    }

    public final c setCreative(String str) {
        a("cr", str);
        return this;
    }

    public final c setId(String str) {
        a("id", str);
        return this;
    }

    public final c setName(String str) {
        a("nm", str);
        return this;
    }

    public final c setPosition(String str) {
        a("ps", str);
        return this;
    }

    public final String toString() {
        return p.zzr(this.f2570a);
    }

    public final Map<String, String> zzdr(String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f2570a.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf((String) next.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), (String) next.getValue());
        }
        return hashMap;
    }
}
