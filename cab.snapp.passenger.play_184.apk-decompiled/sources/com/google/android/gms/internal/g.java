package com.google.android.gms.internal;

import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.a.c;
import com.google.android.gms.analytics.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class g extends p<g> {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f3157a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f3158b = new ArrayList();
    private final Map<String, List<a>> c = new HashMap();
    private b d;

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.f3157a.isEmpty()) {
            hashMap.put("products", this.f3157a);
        }
        if (!this.f3158b.isEmpty()) {
            hashMap.put("promotions", this.f3158b);
        }
        if (!this.c.isEmpty()) {
            hashMap.put("impressions", this.c);
        }
        hashMap.put("productAction", this.d);
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        g gVar = (g) pVar;
        gVar.f3157a.addAll(this.f3157a);
        gVar.f3158b.addAll(this.f3158b);
        for (Map.Entry next : this.c.entrySet()) {
            String str = (String) next.getKey();
            for (a aVar : (List) next.getValue()) {
                if (aVar != null) {
                    String str2 = str == null ? "" : str;
                    if (!gVar.c.containsKey(str2)) {
                        gVar.c.put(str2, new ArrayList());
                    }
                    gVar.c.get(str2).add(aVar);
                }
            }
        }
        b bVar = this.d;
        if (bVar != null) {
            gVar.d = bVar;
        }
    }

    public final b zzvu() {
        return this.d;
    }

    public final List<a> zzvv() {
        return Collections.unmodifiableList(this.f3157a);
    }

    public final Map<String, List<a>> zzvw() {
        return this.c;
    }

    public final List<c> zzvx() {
        return Collections.unmodifiableList(this.f3158b);
    }
}
