package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    final Map<BasePendingResult<?>, Boolean> f2852a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    final Map<g<?>, Boolean> f2853b = Collections.synchronizedMap(new WeakHashMap());

    private final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f2852a) {
            hashMap = new HashMap(this.f2852a);
        }
        synchronized (this.f2853b) {
            hashMap2 = new HashMap(this.f2853b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).zzv(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((g) entry2.getKey()).trySetException(new b(status));
            }
        }
    }

    public final void zzahv() {
        a(false, al.zzfsy);
    }

    public final void zzahw() {
        a(true, ch.zzfvg);
    }
}
